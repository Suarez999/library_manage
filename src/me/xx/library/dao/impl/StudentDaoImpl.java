package me.xx.library.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import me.xx.library.dao.StudentDao;
import me.xx.library.entity.Student;
import me.xx.library.utils.JdbcUtils;
import me.xx.library.utils.PageBean;

public class StudentDaoImpl implements StudentDao {

	@Override
	public Student login(String name, String pwd) {
		String sql="select * from student where username=? and pwd=?";
		QueryRunner qr = JdbcUtils.getQueryRunner();
		try {
			Student student = qr.query(sql, new BeanHandler<Student>(Student.class),name,pwd);
			return student;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void addStudent(Student student) {
		String sql="insert into student(name,username,sex,stu_class,phone,email,address,max_book,state,pwd) values(?,?,?,?,?,?,?,?,?,?)";
		QueryRunner qr = JdbcUtils.getQueryRunner();
		try {
			qr.update(sql, student.getName(),student.getUsername(),student.getSex(),student.getStu_class()
					,student.getPhone(),student.getEmail(),student.getAddress(),student.getMax_book(),1,student.getPwd());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<Student> getAll() {
		String sql="select * from student";
		QueryRunner qr=JdbcUtils.getQueryRunner();
		try {
			List<Student> list = qr.query(sql, new BeanListHandler<Student>(Student.class));
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void findByPage(PageBean<Student> pb) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String keyWord=pb.getKeyWord();
		Integer count = this.findCountByPage(keyWord);
		pb.setTotalCount(count);
		if(pb.getCurrentPage()<0){
			pb.setCurrentPage(0);
		}else if(pb.getCurrentPage()>pb.getTotalPage()&&pb.getTotalPage()!=0){
			pb.setCurrentPage(pb.getTotalPage());
		}
		int currentPage=pb.getCurrentPage();
		int index=(currentPage-1)*pb.getPageCount();
		int pageCount=pb.getPageCount();
		String sql=null;
		if(keyWord==null||keyWord.trim().equals("")){
			sql="select * from student limit ?,?";
			try {
				List<Student> list = qr.query(sql, new BeanListHandler<Student>(Student.class),index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}		
		}else{
			sql="select * from student where username like ? limit ?,?";
			try {
				List<Student> list = qr.query(sql, new BeanListHandler<Student>(Student.class),"%"+keyWord+"%",index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public Integer findCountByPage(String keyWord) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql=null;
		if(keyWord==null){
			sql="select count(*) from student";
			try {
				Long count = qr.query(sql, new ScalarHandler<Long>());
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}else{
			sql="select count(*) from student where username like ?";
			try {
				Long count = qr.query(sql, new ScalarHandler<Long>(),"%"+keyWord+"%");
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}
	}

	@Override
	public void update(Student student) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="update student set username=?,phone=?,email=?,address=?,stu_class=?,state=?,fine=?"
				+ "where id=?";
		try {
			qr.update(sql, student.getUsername(),student.getPhone(),student.getEmail(),student.getAddress()
					,student.getStu_class(),student.getState(),student.getFine(),student.getId());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(Integer id) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="delete from student where id=?";
		try {
			qr.update(sql,id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Student findById(Integer id) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from student where id=?";
		try {
			Student student = qr.query(sql, new BeanHandler<Student>(Student.class),id);
			return student;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public Student findByUsername(String userName) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from student where username=?";
		try {
			Student student = qr.query(sql, new BeanHandler<Student>(Student.class),userName);
			return student;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void updatePwd(String name,String pwd) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="update student set pwd=? where username=?";
		try {
			qr.update(sql, pwd,name);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
