package me.xx.library.dao;

import java.util.List;

import me.xx.library.entity.Student;
import me.xx.library.utils.PageBean;

public interface StudentDao {

	Student login(String name,String pwd);
	
	void addStudent(Student student);
	
	List<Student> getAll();
	
	void findByPage(PageBean<Student> pb);
	
	Integer findCountByPage(String keyWord);
	
	void update(Student student);
	
	void delete(Integer id);
	
	Student findById(Integer id);
	
	Student findByUsername(String name);
	
	void updatePwd(String name,String pwd);
}
