package me.xx.library.dao.impl;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import me.xx.library.dao.BorrowBookDao;
import me.xx.library.entity.BorrowBook;
import me.xx.library.utils.JdbcUtils;
import me.xx.library.utils.PageBean;

public class BorrowBookDaoImpl implements BorrowBookDao{

	@Override
	public List<BorrowBook> findCurrentByUsername(String userName) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from borrow_book where username=? and state=1";
		try {
			List<BorrowBook> list = qr.query(sql, new BeanListHandler<BorrowBook>(BorrowBook.class),userName);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public Integer findCountByUsername(String userName) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select count(*) from borrow_book where state=1 and username=?";
		try {
			Long count = qr.query(sql, new ScalarHandler<Long>(),userName);
			return count.intValue();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<BorrowBook> findHistoryByUsername(String userName) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from borrow_book where state=0 and username=?";
		try {
			List<BorrowBook> list = qr.query(sql, new BeanListHandler<BorrowBook>(BorrowBook.class),userName);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public BorrowBook findById(Integer id) {
		
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from borrow_book where id=?";
		try {
			BorrowBook book = qr.query(sql, new BeanHandler<BorrowBook>(BorrowBook.class),id);
			return book;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void updateRecommend(Integer id) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="update borrow_book set recommend=1 where id=?";
		try {
			qr.update(sql,id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void add(BorrowBook borrowBook) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="insert into borrow_book(book_name,username,product,author,isbn,borrow_date,expiration_date,book_id,state)"
				+ "values(?,?,?,?,?,?,?,?,1)";
		try {
			qr.update(sql, borrowBook.getBook_name(),borrowBook.getUsername(),borrowBook.getProduct()
					,borrowBook.getAuthor(),borrowBook.getIsbn(),borrowBook.getBorrow_date()
					,borrowBook.getExpiration_date(),borrowBook.getBook_id());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void Renew(BorrowBook borrowBook) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="update borrow_book set expiration_date=? where id=?";
		try {
			qr.update(sql,borrowBook.getExpiration_date(),borrowBook.getId());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<BorrowBook> getBorrowBooks() {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from borrow_book where state=1";
		try {
			List<BorrowBook> list = qr.query(sql, new BeanListHandler<BorrowBook>(BorrowBook.class));
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void findByPage(PageBean<BorrowBook> pb,Integer state) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String keyWord=pb.getKeyWord();
		
		Integer count = this.findCountByPage(keyWord,state);
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
			sql="select * from borrow_book where state=? limit ?,?";
			try {
				List<BorrowBook> list = qr.query(sql, new BeanListHandler<BorrowBook>(BorrowBook.class),state,index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{
			sql="select * from borrow_book where state=? and username like ? limit ?,?";
			try {
				
				List<BorrowBook> list = qr.query(sql, new BeanListHandler<BorrowBook>(BorrowBook.class),state,"%"+keyWord+"%",index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
	}

	@Override
	public Integer findCountByPage(String keyWord,Integer state) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql=null;
		if(keyWord==null){
			sql="select count(*) from borrow_book where state=?";
			try {
				
				// 执行查询， 返回结果的第一行的第一列
				Long count = qr.query(sql, new ScalarHandler<Long>(),state);
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}else{
			sql="select count(*) from borrow_book where state=? and username like ?";
			try {
				
				// 执行查询， 返回结果的第一行的第一列
				Long count = qr.query(sql, new ScalarHandler<Long>(),state,"%"+keyWord+"%");
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}	
	}

	@Override
	public void returnBook(BorrowBook borrowBook) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="update borrow_book set state=0,return_date=? where id=?";
		try {
			qr.update(sql, borrowBook.getReturn_date(),borrowBook.getId());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void updateFine(BorrowBook borrowBook) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="update borrow_book set fine=? where id=?";
		try {
			qr.update(sql, borrowBook.getFine(),borrowBook.getId());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<BorrowBook> findOverdue(String username) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from borrow_book where expiration_date<? and state=1";
		try {
			List<BorrowBook> list = qr.query(sql,new BeanListHandler<BorrowBook>(BorrowBook.class),new Date());
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void findFineByPage(PageBean<BorrowBook> pb, Integer state) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String keyWord=pb.getKeyWord();
		
		Integer count = this.findFineCountByPage(keyWord,state);
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
			sql="select * from borrow_book where expiration_date<? and state=? and pay=0 limit ?,?";
			try {
				List<BorrowBook> list = qr.query(sql, new BeanListHandler<BorrowBook>(BorrowBook.class),new Date(),state,index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{
			sql="select * from borrow_book where expiration_date<? and state=? and pay=0 and username like ? limit ?,?";
			try {
				
				List<BorrowBook> list = qr.query(sql, new BeanListHandler<BorrowBook>(BorrowBook.class),new Date(),state,"%"+keyWord+"%",index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
	}

	@Override
	public Integer findFineCountByPage(String keyWord, Integer state) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql=null;
		if(keyWord==null){
			sql="select count(*) from borrow_book where expiration_date<? and state=? and pay=0";
			try {
				
				// 执行查询， 返回结果的第一行的第一列
				Long count = qr.query(sql, new ScalarHandler<Long>(),new Date(),state);
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}else{
			sql="select count(*) from borrow_book where expiration_date<? and state=? and username like ? and pay=0";
			try {
				
				// 执行查询， 返回结果的第一行的第一列
				Long count = qr.query(sql, new ScalarHandler<Long>(),new Date(),state,"%"+keyWord+"%");
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}	
	}

	@Override
	public void payBook(Integer id) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="update borrow_book set pay=1,state=0,return_date=? where id=?";
		try {
			qr.update(sql,new Date(),id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void payLost(Integer id) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="update borrow_book set state=0,lost=1,return_date=? where id=?";
		try {
			qr.update(sql,new Date(),id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<BorrowBook> findLost(String username) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="select * from borrow_book where lost=1 and username=?";
		try {
			List<BorrowBook> list = qr.query(sql, new BeanListHandler<BorrowBook>(BorrowBook.class),username);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}
