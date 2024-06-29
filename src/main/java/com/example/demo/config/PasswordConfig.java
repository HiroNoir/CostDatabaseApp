package com.example.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 *  パスワードをハッシュ化するクラス
 */
@Configuration
public class PasswordConfig {

    // 下記@Beanを付けてpublicを記載するとSTSより「Remove `public` from @Bean method」他のfix提案が出現
    // よって今は仮に「public」を削除し、エラーが出なければこのままとする。（※書籍ではpublic記載有り）
    @Bean
    PasswordEncoder passwordEncoder() {
        // エンコードの設定
        return new BCryptPasswordEncoder();
    }

}