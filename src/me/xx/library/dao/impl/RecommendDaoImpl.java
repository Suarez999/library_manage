package me.xx.library.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import me.xx.library.dao.RecommendDao;
import me.xx.library.entity.Recommend;
import me.xx.library.utils.JdbcUtils;
import me.xx.library.utils.PageBean;

public class RecommendDaoImpl implements RecommendDao{

	@Override
	public void add(Recommend recommend) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="insert into recommend(book_name,author,isbn,product,username,book_id) values"
				+ "(?,?,?,?,?,?)";
		try {
			qr.update(sql, recommend.getBook_name(),recommend.getAuthor(),recommend.getIsbn()
					,recommend.getProduct(),recommend.getUsername(),recommend.getBook_id());
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}

	@Override
	public List<Recommend> getAll(String userName) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from recommend where username=?";
		try {
			List<Recommend> list = qr.query(sql, new BeanListHandler<Recommend>(Recommend.class),userName);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void findByPage(PageBean<Recommend> pb) {
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
		if(keyWord==null){
			sql="select * from recommend limit ?,?";
			try {
				List<Recommend> list = qr.query(sql, new BeanListHandler<Recommend>(Recommend.class),index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{
			sql="select * from recommend where name like ? limit ?,?";
			try {
				
				List<Recommend> list = qr.query(sql, new BeanListHandler<Recommend>(Recommend.class),"%"+keyWord+"%",index,pageCount);
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
			sql="select count(*) from recommend";
			try {
				
				// 执行查询， 返回结果的第一行的第一列
				Long count = qr.query(sql, new ScalarHandler<Long>());
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}else{
			sql="select count(*) from recommend where name like ?";
			try {
				
				// 执行查询， 返回结果的第一行的第一列
				Long count = qr.query(sql, new ScalarHandler<Long>(),"%"+keyWord+"%");
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}	
	}

}
