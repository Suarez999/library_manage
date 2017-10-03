package me.xx.library.dao;

import java.util.List;

import me.xx.library.entity.Book;
import me.xx.library.utils.PageBean;

public interface BookDao {

	List<Book> findAll();
	void findByPage(PageBean<Book> pb);
	Integer findCountByPage(String keyWord);
	void add(Book book);
	Book findById(Integer id);
	void updateById(Book book);
	void deleteById(Integer id);
	void updateRemain(Integer id,Integer remain);
	void findBySubject(PageBean<Book> pb);
	Integer findCountBySubject(String keyWord);
	void findNewByPage(PageBean<Book> pb);
	Integer findCountNewByPage(String keyWord);
	void findHotByPage(PageBean<Book> pb);
	Integer findCountHotByPage(String keyWord);
}
