package com.example.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

import lombok.RequiredArgsConstructor;

/**
 *  セキュリティ設定クラス
 */
@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
public class SecurityConfig {

    /** DI対象が存在すれば、DIして使用する */
    // @RequiredArgsConstructorによりfinalで修飾されたフィールドだけを引数に受け取るコンストラクタを自動生成する
    // これにより「@Autowired」を使ったコンストラクタインジェクションの記述は不要となる
    // 今のところ下記２つのDIは機能していないようなのでコメントアウト。このままエラーが出なければ削除。▲未削除
    // private final UserDetailsService userDetailsService;
    // private final PasswordEncoder passwordEncoder;

    /** SecurityFilterChainのBean定義　*/
    // 下記@Beanを付けてpublicを記載するとSTSより「Remove `public` from @Bean method」他のfix提案が出現
    // よって今は仮に「public」を削除し、エラーが出なければこのままとする。（※書籍ではpublic記載有り）
    @Bean
    SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
            // ★HTTPリクエストに対するセキュリティ設定
            .authorizeHttpRequests(authz -> authz
            // 「/login」へのアクセスは認証を必要としない
            .requestMatchers("/login").permitAll()
            // 【管理者権限設定】URL:/employee/**は管理者しかアクセスできない
            .requestMatchers("/employee/**").hasAuthority("ADMIN")
            // その他のリクエストは認証が必要
            .anyRequest().authenticated())
            // ★フォームベースのログイン設定
            .formLogin(form -> form
            // カスタムログインページのURLを指定
            .loginPage("/login")
            // ログイン処理のURLを指定
            .loginProcessingUrl("/authentication")
            // ユーザー名のname属性を指定
            .usernameParameter("usernameInput")
            // パスワードのname属性を指定
            .passwordParameter("passwordInput")
            // ログイン成功時のリダイレクト先を指定（第2引数をtrueにすることで第1引数のパスに強制遷移）
            .defaultSuccessUrl("/", true)
            // ログイン失敗時のリダイレクト先を指定
            .failureUrl("/login?error"))
            // ★ログアウト設定
            .logout(logout -> logout
            // ログアウトを処理するURLを指定
            .logoutUrl("/logout")
            // ログアウト成功時のリダイレクト先を指定
            .logoutSuccessUrl("/login?logout")
            // ログアウト時にセッションを無効にする
            .invalidateHttpSession(true)
            // ログアウト時にCookieを削除する
            .deleteCookies("JSESSIONID")
            );
        return http.build();
    }

}