package me.xx.library.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import me.xx.library.dao.TeacherDao;
import me.xx.library.entity.Teacher;
import me.xx.library.utils.JdbcUtils;
import me.xx.library.utils.PageBean;

public class TeacherDaoImpl implements TeacherDao{

	@Override
	public void findByPage(PageBean<Teacher> pb) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String keyWord=pb.getKeyWord();
		Integer count = this.findCountByPage(keyWord);
		pb.setTotalCount(count);
		if(pb.getCurrentPage()<0){
			pb.setCurrentPage(1);
		}else if(pb.getCurrentPage()>pb.getTotalPage()&&pb.getTotalPage()!=0){
			pb.setCurrentPage(pb.getTotalPage());
		}
		int currentPage=pb.getCurrentPage();
		int index=(currentPage-1)*pb.getPageCount();
		int pageCount=pb.getPageCount();
		String sql=null;
		if(keyWord==null||keyWord.trim().equals("")){
			sql="select * from teacher limit ?,?";
			try {
				List<Teacher> list = qr.query(sql, new BeanListHandler<Teacher>(Teacher.class),index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{
			sql="select * from teacher where username like ? limit ?,?";
			try {
				List<Teacher> list = qr.query(sql, new BeanListHandler<Teacher>(Teacher.class),"%"+keyWord+"%",index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	@Override
	public Integer findCountByPage(String keyWord) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql=null;
		if(keyWord==null){
			sql="select count(*) from teacher";
			try {
				Long count = qr.query(sql, new ScalarHandler<Long>());
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}else{
			sql="select count(*) from teacher where username like ?";
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
	public Teacher findById(Integer id) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from teacher where id=?";
		try {
			Teacher teacher = qr.query(sql, new BeanHandler<Teacher>(Teacher.class),id);
			return teacher;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void add(Teacher teacher) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="insert into teacher(name,username,sex,teacher_class,phone,email,address,max_book,state,pwd) values(?,?,?,?,?,?,?,?,?,?)";
		try {
			qr.update(sql, teacher.getName(),teacher.getUsername(),teacher.getSex()
					,teacher.getTeacher_class(),teacher.getPhone(),teacher.getEmail()
					,teacher.getAddress(),teacher.getMax_book(),teacher.getState(),teacher.getPwd());
		} catch (SQLException e) {
			e.printStackTrace();
		}
}

	@Override
	public void delete(Integer id) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="delete from teacher where id=?";
		try {
			qr.update(sql, id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(Teacher teacher) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="update teacher set username=?,phone=?,email=?,address=?,teacher_class=?,state=?,fine=?"
				+ "where id=?";
		try {
			qr.update(sql,teacher.getUsername(),teacher.getPhone(),teacher.getEmail()
					,teacher.getAddress(),teacher.getTeacher_class(),teacher.getState()
					,teacher.getFine(),teacher.getId());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Teacher login(String username, String password) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from teacher where username=? and pwd=?";
		try {
			Teacher teacher = qr.query(sql, new BeanHandler<Teacher>(Teacher.class),username,password);
			return teacher;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public Teacher findByUsername(String userName) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from teacher where username=?";
		try {
			Teacher teacher = qr.query(sql, new BeanHandler<Teacher>(Teacher.class),userName);
			return teacher;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void updatePwd(String name, String pwd) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="update teacher set pwd=? where name=?";
		try {
			qr.update(sql, pwd,name);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
}
