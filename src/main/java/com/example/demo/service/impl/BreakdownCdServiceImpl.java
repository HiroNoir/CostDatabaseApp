package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.constraints.ErrorKinds;
import com.example.demo.entity.BreakdownCd;
import com.example.demo.repository.BreakdownCdMapper;
import com.example.demo.service.BreakdownCdService;

import lombok.RequiredArgsConstructor;

/**
* 内訳種目サービス実装クラス
*/
@Service
@Transactional
@RequiredArgsConstructor
public class BreakdownCdServiceImpl implements BreakdownCdService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final BreakdownCdMapper mapper;

    /** 【金額取得】 ▲未編集 */
    /** 【合計取得】 ▲未編集 */

    /** 【特定取得】 */
    @Override
    public List<BreakdownCd> findAllById(Integer bcdBcoId) {
        return mapper.selectAllById(bcdBcoId);
    }

    /** 【一件取得】 */
    @Override
    public BreakdownCd findById(Integer bcdBcoId, String bcdTypeName) {
        return mapper.selectById(bcdBcoId, bcdTypeName);
    }

    /** 【登録実行】 ▲実装 */
    @Override
    public ErrorKinds insert(BreakdownCd breakdownCd, LoginUserDetails loginUserDetails) {
        // TODO Auto-generated method stub
        return null;
    }

    /** 【更新実行】 ▲実装 */
    @Override
    public ErrorKinds update(BreakdownCd breakdownCd, LoginUserDetails loginUserDetails) {
        // TODO Auto-generated method stub
        return null;
    }

    /** 【削除実行】 ▲実装 */
    @Override
    public ErrorKinds delete(Integer bcdBcoId, String bcdTypeName) {
        // TODO Auto-generated method stub
        return null;
    }

}