package me.xx.library.service.impl;

import java.util.List;

import me.xx.library.dao.StudentDao;
import me.xx.library.dao.impl.StudentDaoImpl;
import me.xx.library.entity.Student;
import me.xx.library.service.StudentService;
import me.xx.library.utils.PageBean;

public class StudentServiceImpl implements StudentService{

	private StudentDao studentDao=new StudentDaoImpl();
	@Override
	public Student login(String name, String pwd) {
		Student student = studentDao.login(name, pwd);
		return student;
	}
	@Override
	public void addStudent(Student student) {
		studentDao.addStudent(student);
	}
	@Override
	public List<Student> getAll() {
		List<Student> list = studentDao.getAll();
		return list;
	}
	@Override
	public void findByPage(PageBean<Student> pb) {
		studentDao.findByPage(pb);
	}
	@Override
	public void update(Student student) {
		studentDao.update(student);
	}
	@Override
	public void delete(Integer id) {
		studentDao.delete(id);
	}
	@Override
	public Student findById(Integer id) {
		Student student = studentDao.findById(id);
		return student;
	}
	@Override
	public Student findByUsername(String userName) {
		
		return studentDao.findByUsername(userName);
	}
	@Override
	public void updatePwd(String name, String pwd) {

		studentDao.updatePwd(name, pwd);
	}
}
