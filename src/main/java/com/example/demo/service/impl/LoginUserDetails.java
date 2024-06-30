package com.example.demo.service.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.example.demo.entity.Authentication;
import com.example.demo.entity.Role;

public class LoginUserDetails implements UserDetails {

    /**
     * このUserDetails実装クラスを作成したら、STSより下記のようなfix提案があった。
     * The serializable class LoginUserDetail does not declare a static final serialVersionUID field of type long
     * 4 quick fixes available:
     *   1.Add Default serial version ID
     *   2.Add generated serial version ID
     *   3.Add @SupressWarnings 'serial' to 'LoginUserDetail'
     *   4.Configure problem severity
     * 多くの書籍やLYTA個人開発に倣って、ここでは「1.Add Default serial version ID」を選択して、
     * 「private static final long serialVersionUID = 1L;」を追記する。
     */
    private static final long serialVersionUID = 1L;

    /** 【DI】 */
    // DI
    private final Authentication authentication;
    private final List<SimpleGrantedAuthority> authorities;

    // コンストラクタインジェクション
    public LoginUserDetails(Authentication authentication) {
        this.authentication = authentication;

        // 権限リスト
        List<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
        // ログインユーザーの権限を格納
        authorities.add(new SimpleGrantedAuthority(authentication.getAuthority().toString()));
        // ADMIN ロールの場合、EDITORとGENERLの権限も付与
        if (authentication.getAuthority()== Role.ADMIN) {
            authorities.add(
                    new SimpleGrantedAuthority(Role.EDITOR.toString()));
            authorities.add(
                    new SimpleGrantedAuthority(Role.GENERAL.toString()));
        }
        // EDITOR ロールの場合、GENERLの権限も付与
        if (authentication.getAuthority() == Role.EDITOR) {
            authorities.add(
                    new SimpleGrantedAuthority(Role.GENERAL.toString()));
        }
        this.authorities = authorities;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        /**
         *  書籍「Spring徹底入門_NTTデータ著_第2版」P442よりこのメソッドの説明を転載。
         *  ユーザーに与えらている権限リストを返却するメソッド。このメソッドは許可処理で利用する。
         */
        return authorities;
    }

    @Override
    public String getPassword() {
        /**
         *  書籍「Spring徹底入門_NTTデータ著_第2版」P442よりこのメソッドの説明を転載。
         *  登録されているパスワードを返却するメソッド。このメソッドで返却したパスワードとクライアントから指定されたパスワードが
         *  一致しない場合は、DaoAuthenticationProviderはBadCredencialIsExcetionをスローする。
         */
        return authentication.getPassword();
    }

    @Override
    public String getUsername() {
        /**
         * 書籍「Spring徹底入門_NTTデータ著_第2版」P442よりこのメソッドの説明を転載。
         * ユーザー名を返却するメソッド。
         */
        return authentication.getUsername();
    }

    @Override
    public boolean isAccountNonExpired() {
        /**
         * 書籍「Spring徹底入門_NTTデータ著_第2版」P442よりこのメソッドの説明を転載。
         * アカウントの有効期限の状態を判定するメソッド。有効期限内の場合はtrueを返却する。
         * 有効期限切れの場合、DaoAuthenticationProviderはAccountExpiredExceptionをスローする。
         * ここではLYTA個人開発に倣って、trueを返す。
         * 書籍「Spring徹底入門_NTTデータ著_第2版」P443より、
         * 「『アカウントの有効期限切れ』に対するチェックは常にチェックOK（true）を返す実装としている。」
         */
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        /**
         * 書籍「Spring徹底入門_NTTデータ著_第2版」P442よりこのメソッドの説明を転載。
         * アカウントのロック状態を判定するメソッド。ロックされていないの場合はtrueを返却する。
         * アカウントがロックされている場合、DaoAuthenticationProviderはLockedExceptionをスローする。
         * ここではLYTA個人開発に倣って、trueを返す。
         * 書籍「Spring徹底入門_NTTデータ著_第2版」P443より、
         * 『アカウントのロック』に対するチェックは常にチェックOK（true）を返す実装としている。」
         */
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        /**
         * 書籍「Spring徹底入門_NTTデータ著_第2版」P442よりこのメソッドの説明を転載。
         * 資格情報の有効期限の状態を判定するメソッド。有効期限内の場合はtrueを返却する。
         * 有効期限切れの場合、DaoAuthenticationProviderはCredentialsExpiredExceptionをスローする。
         * ここではLYTA個人開発に倣って、trueを返す。
         * 書籍「Spring徹底入門_NTTデータ著_第2版」P443より、
         * 『資格情報の有効期限切れ』に対するチェックは常にチェックOK（true）を返す実装としている。」
         */
        return true;
    }

    @Override
    public boolean isEnabled() {
        /**
         * 書籍「Spring徹底入門_NTTデータ著_第2版」P442よりこのメソッドの説明を転載。
         * 有効なユーザーかを判定するメソッド。有効なtrueを返却する。
         * 無効なユーザーの場合、DaoAuthenticationProviderはDisabledExceptionをスローする。
         * ここではLYTA個人開発に倣って、trueを返す。
         * ▲未実装：将来的には出来れば有効無効の属性もつけるようにしたい。
         */
        return true;
    }

}