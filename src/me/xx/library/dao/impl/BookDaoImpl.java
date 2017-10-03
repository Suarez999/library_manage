package me.xx.library.dao.impl;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import me.xx.library.dao.BookDao;
import me.xx.library.entity.Book;
import me.xx.library.utils.JdbcUtils;
import me.xx.library.utils.PageBean;

public class BookDaoImpl implements BookDao{

	@Override
	public List<Book> findAll() {
		String sql = "select * from book";
		QueryRunner qr = JdbcUtils.getQueryRunner();
		try {
			List<Book> list = qr.query(sql, new BeanListHandler<Book>(Book.class));
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void findByPage(PageBean<Book> pb) {
	
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
			sql="select * from book limit ?,?";
			try {
				List<Book> list = qr.query(sql, new BeanListHandler<Book>(Book.class),index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{
			sql="select * from book where summary like ? limit ?,?";
			try {
				
				List<Book> list = qr.query(sql, new BeanListHandler<Book>(Book.class),"%"+keyWord+"%",index,pageCount);
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
			sql="select count(*) from book";
			try {
				
				// 执行查询， 返回结果的第一行的第一列
				Long count = qr.query(sql, new ScalarHandler<Long>());
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}else{
			sql="select count(*) from book where summary like ?";
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
	public void add(Book book) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="insert into book(name,number,price,product,book_state,category,imageUrl,isbn,author,b_subject,remain,add_date,summary)"
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			qr.update(sql,book.getName(),book.getNumber(),book.getPrice(),book.getProduct(),1,
					book.getCategory(),book.getImageUrl(),book.getIsbn(),book.getAuthor(),book.getB_subject()
					,book.getNumber(),new Date(),book.getName()+book.getAuthor()+book.getCategory()+book.getProduct());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public Book findById(Integer id) {
		String sql="select * from book where id=?";
		QueryRunner qr = JdbcUtils.getQueryRunner();
		try {
			Book book = qr.query(sql, new BeanHandler<Book>(Book.class),id);
			return book;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void updateById(Book book) {
		String sql="update book set name=?,category=?,b_subject=?,price=?"
				+ ",author=?,product=?,imageUrl=?,book_state=?,remain=? where id=?";
		QueryRunner qr = JdbcUtils.getQueryRunner();
		try {
			qr.update(sql, book.getName(),book.getCategory(),book.getB_subject()
					,book.getPrice(),book.getAuthor(),book.getProduct(),book.getImageUrl()
					,book.getBook_state(),book.getRemain(),book.getId());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteById(Integer id) {
		
		String sql="delete from book where id=?";
		QueryRunner qr = JdbcUtils.getQueryRunner();
		try {
			qr.update(sql, id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateRemain(Integer id,Integer remain) {

		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql="update book set remain=? where id=?";
		try {
			qr.update(sql, remain,id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}	
	
	
	@Override
	public void findBySubject(PageBean<Book> pb) {
	
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String keyWord=pb.getKeyWord();
		
		Integer count = this.findCountBySubject(keyWord);
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
			sql="select * from book limit ?,?";
			try {
				List<Book> list = qr.query(sql, new BeanListHandler<Book>(Book.class),index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{
			sql="SELECT * FROM book WHERE b_subject=? limit ?,?";
			try {
				
				List<Book> list = qr.query(sql, new BeanListHandler<Book>(Book.class),keyWord,index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
	}

	@Override
	public Integer findCountBySubject(String keyWord) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql=null;
		if(keyWord==null){
			sql="select count(*) from book";
			try {
				
				// 执行查询， 返回结果的第一行的第一列
				Long count = qr.query(sql, new ScalarHandler<Long>());
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}else{
			sql="SELECT count(*) FROM book WHERE b_subject=?";
			try {
				
				// 执行查询， 返回结果的第一行的第一列
				Long count = qr.query(sql, new ScalarHandler<Long>(),keyWord);
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}	
	}

	@Override
	public void findNewByPage(PageBean<Book> pb) {
		
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String keyWord=pb.getKeyWord();
		
		Integer count = this.findCountNewByPage(keyWord);
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
			sql="select * from book where DATE_SUB(CURDATE(), INTERVAL 7 DAY) <= DATE(add_date) limit ?,?";
			try {
				List<Book> list = qr.query(sql, new BeanListHandler<Book>(Book.class),index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{
			sql="select * from book where summary like ? limit ?,?";
			try {
				
				List<Book> list = qr.query(sql, new BeanListHandler<Book>(Book.class),"%"+keyWord+"%",index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
	}

	@Override
	public Integer findCountNewByPage(String keyWord) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql=null;
		if(keyWord==null){
			sql="select count(*) from book where DATE_SUB(CURDATE(), INTERVAL 7 DAY) <= DATE(add_date)";
			try {
				
				// 执行查询， 返回结果的第一行的第一列
				Long count = qr.query(sql, new ScalarHandler<Long>());
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}else{
			sql="select count(*) from book where summary like ?";
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
	public void findHotByPage(PageBean<Book> pb) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String keyWord=pb.getKeyWord();
		
		Integer count = this.findCountHotByPage(keyWord);
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
			sql="SELECT * FROM book WHERE ROUND(remain/number* 100,1)<50.0 limit ?,?";
			try {
				List<Book> list = qr.query(sql, new BeanListHandler<Book>(Book.class),index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{
			sql="select * from book where summary like ? limit ?,?";
			try {
				
				List<Book> list = qr.query(sql, new BeanListHandler<Book>(Book.class),"%"+keyWord+"%",index,pageCount);
				pb.setPageData(list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
	}

	@Override
	public Integer findCountHotByPage(String keyWord) {
		QueryRunner qr = JdbcUtils.getQueryRunner();
		String sql=null;
		if(keyWord==null){
			sql="SELECT count(*) FROM book WHERE ROUND(remain/number* 100,1)<50.0";
			try {
				
				// 执行查询， 返回结果的第一行的第一列
				Long count = qr.query(sql, new ScalarHandler<Long>());
				return count.intValue();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}else{
			sql="select count(*) from book where summary like ?";
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
