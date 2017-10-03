package me.xx.library.service;

import java.util.List;

import me.xx.library.entity.Subject;

public interface SubjectService {

	List<Subject> findByCat(String cat);
}
