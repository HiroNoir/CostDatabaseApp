package com.example.demo.service;

import java.util.List;

import com.example.demo.entity.EditorUser;

public interface EditorUserService {

    /** 全件検索 */
    List<EditorUser> findAll();

    /** 1件検索 */
    EditorUser findByCode(String euCode);

    /** 登録 */
    void insert(EditorUser editorUser);

    /** 更新 */
    void update(EditorUser editorUser);

    /** 削除 */
    void delete(String euCode);
}
