package com.example.demo.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entity.EditorUser;
import com.example.demo.repository.EditorUserMapper;
import com.example.demo.service.EditorUserService;

import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class EditorUserServiceImpl implements EditorUserService {

    /** DI */
    private final EditorUserMapper mapper;

    @Override
    public List<EditorUser> findAll() {
        return mapper.selectAll();
    }

    @Override
    public EditorUser findByCode(String euCode) {
        return mapper.selectByCode(euCode);
    }

    @Override
    public void insert(EditorUser editorUser) {
        mapper.insert(editorUser);
    }

    @Override
    public void update(EditorUser editorUser) {
        mapper.update(editorUser);
    }

    @Override
    public void delete(String euCode) {
        mapper.delete(euCode);
    }

}