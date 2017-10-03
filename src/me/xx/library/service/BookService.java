package me.xx.library.service;

import java.util.List;

import me.xx.library.entity.Book;
import me.xx.library.utils.PageBean;

public interface BookService {

	List<Book> findAll();
	void findByPage(PageBean<Book> pb);
	void add(Book book);
	Book findById(Integer id);
	void updateById(Book book);
	void deleteById(Integer id);
	void updateRemain(Integer id,Integer remain);
	void findBySubject(PageBean<Book> pb);
	void findNewByPage(PageBean<Book> pb);
	void findHotByPage(PageBean<Book> pb);
}
