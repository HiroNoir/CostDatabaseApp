package com.example.demo.repository;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.entity.Authentication;

/**
* カスタム認証リポジトリインターフェース（MyBatis用マッパー）
*/
@Mapper
public interface AuthenticationMapper {

    /** 【ユーザー名でログイン情報を取得】　*/
    Authentication selectByUsername(String username);

}