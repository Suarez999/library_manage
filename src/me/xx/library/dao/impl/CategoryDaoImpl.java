package me.xx.library.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import me.xx.library.dao.CategoryDao;
import me.xx.library.entity.Category;
import me.xx.library.utils.JdbcUtils;

public class CategoryDaoImpl implements CategoryDao{

	@Override
	public List<Category> getAll() {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from category";
		try {
			List<Category> list = qr.query(sql, new BeanListHandler<Category>(Category.class));
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

}
