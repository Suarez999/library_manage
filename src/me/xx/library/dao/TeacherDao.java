package me.xx.library.dao;

import me.xx.library.entity.Teacher;
import me.xx.library.utils.PageBean;

public interface TeacherDao {

	void findByPage(PageBean<Teacher> pb);
	
	Integer findCountByPage(String keyWord);
	
	Teacher findById(Integer id);
	
	void add(Teacher teacher);
	
	void delete(Integer id);
	
	void update(Teacher teacher);
	
	Teacher login(String username,String password);
	
	Teacher findByUsername(String userName);
	
	void updatePwd(String name,String pwd);
}
