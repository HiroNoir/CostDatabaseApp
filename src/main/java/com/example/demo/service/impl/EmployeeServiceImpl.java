package com.example.demo.service.impl;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.Employee;
import com.example.demo.repository.EmployeeMapper;
import com.example.demo.service.EmployeeService;

import lombok.RequiredArgsConstructor;

/**
* 従業員サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class EmployeeServiceImpl implements EmployeeService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final EmployeeMapper mapper;
    private final PasswordEncoder passwordEncoder;

    /** 【全件取得】 */
    @Override
    public List<Employee> findAll() {
        return mapper.selectAll();
    }

    /** 【一件取得】 */
    @Override
    public Employee findByCode(String code) {
        return mapper.selectByCode(code);
    }

    /** 【登録実行】 */
    @Override
    public ErrorKinds insert(Employee employee) {

        /** 社員番号重複チェック */
        // 対象データを取得
        Employee target = mapper.selectByCode(employee.getCode());
        // 対象データの有無確認
        if (target != null) {
            // 重複があるためErrorKindsクラスのCODE_DUPLICATE_ERRORを返す
            return ErrorKinds.CODE_DUPLICATE_ERROR;
        }

        /** パスワードチェック */
        ErrorKinds result = employeePasswordCheck(employee);
        if (ErrorKinds.CHECK_OK != result) {
            return result;
        }

        /** 登録に必要な情報をEntityに格納 */
        // 登録日時と更新日時はMapper.xmlにてCURRENT_TIMESTAMPを格納しているので、ここでの格納は不要

        /** 登録処理 */
        // 登録実行
        mapper.insert(employee);
        // 登録成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【更新実行】 */
    @Override
    public ErrorKinds update(Employee employee) {

        /** パスワードチェック */
        // 更新画面におけるパスワードの画面入力値が空でない場合は画面入力値が暗号化された値で登録
        if (!("".equals(employee.getPassword()))) {
        ErrorKinds result = employeePasswordCheck(employee);
        if (ErrorKinds.CHECK_OK != result) {
            return result;
        }
        }else {
        // 更新画面におけるパスワードの画面入力値が空の場合はデータベースに設定済みの値画面入力値が暗号化された値を代入
        employee.setPassword(this.findByCode(employee.getCode()).getPassword());
        }

        /** 更新に必要な情報をEntityに格納 */
        // 登録日時は更新しないため、Mapper.xmlの更新SQL文から削除してある。ここでの格納は不要
        // 更新日時はMapper.xmlにてCURRENT_TIMESTAMPを格納しているので、ここでの格納は不要
        // 更新時のcodeはform.html内にinput（type="hidden"）仕込んであるため、ここでの格納は不要

        /** 更新処理 */
        // 更新実行
        mapper.update(employee);
        // 更新成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【削除実行】 */
    @Override
    public ErrorKinds delete(String code, LoginUserDetails loginUserDetails) {

        /** ログイン中のユーザー自身を削除しようとした場合はエラーメッセージを表示 */
        if (code.equals(loginUserDetails.getUsername())) {
         // ErrorKindsクラスのLOGINCHECK_ERRORを返す
            return ErrorKinds.LOGINCHECK_ERROR;
        }

        /** 削除処理 */
        // 削除実行
        mapper.delete(code);
        // 削除成功したのでErrorKindsクラスのSUCCESSを返す
        return ErrorKinds.SUCCESS;

    }

    /** 【【パスワードチェック】】 */
    private ErrorKinds employeePasswordCheck(Employee employee) {

        /** パスワードの半角英数字チェック */
        if (isHarfSizeCheckError(employee)) {
         // 入力チェックにかかったらErrorKindsクラスのHALFSIZE_ERRORを返す
            return ErrorKinds.HALFSIZE_ERROR;
        }

        /** パスワードの8文字～16文字チェック */
        if (isOutOfRangePassword(employee)) {
            // 入力チェックにかかったらErrorKindsクラスのRANGECHECK_ERRORを返す
            return ErrorKinds.RANGECHECK_ERROR;
        }

        /** パスワードにエラーが無ければパスワード登録 */
        // パスワードをハッシュ化して従業員のEntityに格納
        employee.setPassword(passwordEncoder.encode(employee.getPassword()));
        // ErrorKindsクラスのCHECK_OKを返す
        return ErrorKinds.CHECK_OK;

    }

    /** 【【【パスワードの半角英数字チェック】】】 */
    private boolean isHarfSizeCheckError(Employee employee) {

        // 正規表現チェック
        Pattern pattern = Pattern.compile("^[A-Za-z0-9]+$");
        Matcher matcher = pattern.matcher(employee.getPassword());
        return !matcher.matches();

    }

    /** 【【【パスワードの8文字～16文字チェック】】】 */
    private boolean isOutOfRangePassword(Employee employee) {

        // 桁数チェック
        int passwordLength = employee.getPassword().length();
        return passwordLength < 8 || 16 < passwordLength;

    }

}