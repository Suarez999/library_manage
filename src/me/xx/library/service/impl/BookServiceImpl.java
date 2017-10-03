package me.xx.library.service.impl;

import java.util.List;

import me.xx.library.dao.BookDao;
import me.xx.library.dao.impl.BookDaoImpl;
import me.xx.library.entity.Book;
import me.xx.library.service.BookService;
import me.xx.library.utils.PageBean;

public class BookServiceImpl implements BookService{

	BookDao bookDao=new BookDaoImpl();
	@Override
	public List<Book> findAll() {
		List<Book> list = bookDao.findAll();
		return list;
	}
	@Override
	public void findByPage(PageBean<Book> pb) {
		bookDao.findByPage(pb);
	}
	@Override
	public void add(Book book) {
		bookDao.add(book);
	}
	@Override
	public Book findById(Integer id) {
		Book book = bookDao.findById(id);
		return book;
	}
	@Override
	public void updateById(Book book) {
		bookDao.updateById(book);
	}
	@Override
	public void deleteById(Integer id) {
		bookDao.deleteById(id);
	}
	@Override
	public void updateRemain(Integer id, Integer remain) {

		bookDao.updateRemain(id, remain);
	}
	@Override
	public void findBySubject(PageBean<Book> pb) {

		bookDao.findBySubject(pb);
	}
	@Override
	public void findNewByPage(PageBean<Book> pb) {

		bookDao.findNewByPage(pb);
	}
	@Override
	public void findHotByPage(PageBean<Book> pb) {

		bookDao.findHotByPage(pb);
	}
	
}
