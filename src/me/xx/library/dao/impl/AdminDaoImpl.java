package me.xx.library.dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import me.xx.library.dao.AdminDao;
import me.xx.library.entity.Admin;
import me.xx.library.utils.JdbcUtils;

public class AdminDaoImpl implements AdminDao {

	@Override
	public Admin login(String username, String pwd) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from admin where username=? and pwd=?";
		try {
			Admin admin = qr.query(sql, new BeanHandler<Admin>(Admin.class),username,pwd);
			return admin;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

}
