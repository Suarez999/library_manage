package me.xx.library.service.impl;

import me.xx.library.dao.TeacherDao;
import me.xx.library.dao.impl.TeacherDaoImpl;
import me.xx.library.entity.Teacher;
import me.xx.library.service.TeacherService;
import me.xx.library.utils.PageBean;

public class TeacherServiceImpl implements TeacherService {

	private TeacherDao teacherDao=new TeacherDaoImpl();
	@Override
	public void findByPage(PageBean<Teacher> pb) {
		teacherDao.findByPage(pb);
	}

	@Override
	public Teacher findById(Integer id) {
		return teacherDao.findById(id);
	}

	@Override
	public void add(Teacher teacher) {

		teacherDao.add(teacher);
	}

	@Override
	public void delete(Integer id) {

		teacherDao.delete(id);
	}

	@Override
	public void update(Teacher teacher) {

		teacherDao.update(teacher);
	}

	@Override
	public Teacher login(String username, String password) {
		
		return teacherDao.login(username, password);
	}

	@Override
	public Teacher findByUsername(String userName) {
		
		return teacherDao.findByUsername(userName);
	}

	@Override
	public void updatePwd(String name, String pwd) {

		teacherDao.updatePwd(name, pwd);
	}

}
