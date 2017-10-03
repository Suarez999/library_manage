package me.xx.library.service;

import me.xx.library.entity.Teacher;
import me.xx.library.utils.PageBean;

public interface TeacherService {

	void findByPage(PageBean<Teacher> pb);

	Teacher findById(Integer id);
	
	void add(Teacher teacher);
	
	void delete(Integer id);
	
	void update(Teacher teacher);
	
	Teacher login(String username,String password);
	
	Teacher findByUsername(String userName);
	
	void updatePwd(String name,String pwd);
}
