package com.example.demo.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Authentication;
import com.example.demo.entity.Role;
import com.example.demo.repository.AuthenticationMapper;

import lombok.RequiredArgsConstructor;

/**
* カスタム認証サービ実装スクラス
*/
@Service
@RequiredArgsConstructor
public class LoginUserDatailsServiceImpl implements UserDetailsService {

    /** 【DI】 */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    private final AuthenticationMapper authenticationMapper;

    /** 【認証処理】 */
    @Override
    public UserDetails loadUserByUsername(String username)
            throws UsernameNotFoundException {
        // 「認証テーブル」からデータを取得
        Authentication authentication = authenticationMapper.selectByUsername(username);

        // 対象データの有無確認
        if (authentication != null) {
            // 対象データが存在する場合はUserDetailsの実装クラスを返す
            return new LoginUserDetails(authentication);
        } else {
            // 対象データが存在しない場合はExceptionをスローする
            throw new UsernameNotFoundException(
                    username + " => 指定しているユーザー名は存在しません");
        }
    }

}