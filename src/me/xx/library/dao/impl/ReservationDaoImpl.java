package me.xx.library.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import me.xx.library.dao.ReservationDao;
import me.xx.library.entity.Reservation;
import me.xx.library.utils.JdbcUtils;
import me.xx.library.utils.PageBean;

public class ReservationDaoImpl implements ReservationDao{

	@Override
	public void add(Reservation reservation) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="insert into reservation(id,userName,isbn,book_name,product,author,book_id)"
				+ "values(?,?,?,?,?,?,?)";
		try {
			qr.update(sql, reservation.getId(),reservation.getUserName(),reservation.getIsbn()
					,reservation.getBook_name(),reservation.getProduct(),reservation.getAuthor()
					,reservation.getBook_id());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Integer selectCountByUsername(String userName) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select count(*) from reservation where userName=?";
		try {
			Long count = qr.query(sql, new ScalarHandler<Long>(),userName);
			return count.intValue();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException(e);  
		}
	}

	@Override
	public List<Reservation> findByUsername(String userName) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from reservation where userName=?";
		try {
			List<Reservation> list = qr.query(sql, new BeanListHandler<Reservation>(Reservation.class),userName);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void delete(Integer id) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="delete from reservation where id=?";
		try {
			qr.update(sql, id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void truncate() {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="truncate table reservation";
		try {
			qr.update(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void findByPage(PageBean<Reservation> pb) {

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
			sql="select * from reservation limit ?,?";
			try {
				List<Reservation> list = qr.query(sql, new BeanListHandler<Reservation>(Reservation.class),index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{
			sql="select * from reservation where userName like ? limit ?,?";
			try {
				
				List<Reservation> list = qr.query(sql, new BeanListHandler<Reservation>(Reservation.class),"%"+keyWord+"%",index,pageCount);
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
			sql="select count(*) from reservation";
			try {
				
				// 执行查询， 返回结果的第一行的第一列
				Long count = qr.query(sql, new ScalarHandler<Long>());
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}else{
			sql="select count(*) from reservation where userName like ?";
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

	@Override
	public Reservation findById(Integer id) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from reservation where id=?";
		try {
			Reservation reservation = qr.query(sql, new BeanHandler<Reservation>(Reservation.class),id);
			return reservation;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}
