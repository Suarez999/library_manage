package me.xx.library.dao;

import java.util.List;

import me.xx.library.entity.Subject;

public interface SubjectDao {

	List<Subject> findByCat(String cat);
}
