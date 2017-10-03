package me.xx.library.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import me.xx.library.dao.SubjectDao;
import me.xx.library.entity.Subject;
import me.xx.library.utils.JdbcUtils;

public class SubjectDaoImpl implements SubjectDao{

	@Override
	public List<Subject> findByCat(String cat) {
		String sql="select name from t_subject where cat=?";
		QueryRunner qr = JdbcUtils.getQueryRunner();
		try {
			List<Subject> list = qr.query(sql, new BeanListHandler<Subject>(Subject.class),cat);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

}
