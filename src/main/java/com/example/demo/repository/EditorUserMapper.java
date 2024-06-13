package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.demo.entity.EditorUser;

@Mapper
public interface EditorUserMapper {

    /** 全件取得 */
    List<EditorUser> selectAll();

    /** 1件取得 */
    EditorUser selectByCode(@Param("euCode") String euCode);

    /**　登録 */
    void insert(EditorUser editorUser);

    /**　更新 */
    void update(EditorUser editorUser);

    /** 削除 */
    void delete(@Param("euCode") String euCode);
}