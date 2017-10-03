package me.xx.library.service;

import java.util.List;

import me.xx.library.entity.Student;
import me.xx.library.utils.PageBean;

public interface StudentService {

	Student login(String name,String pwd);
	
	void addStudent(Student student);
	
	List<Student> getAll();
	
	void findByPage(PageBean<Student> pb);
	
	void update(Student student);
	
	void delete(Integer id);
	
	Student findById(Integer id);
	
	Student findByUsername(String userName);
	
	void updatePwd(String name,String pwd);
}
