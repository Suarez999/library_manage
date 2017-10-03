package me.xx.library.service.impl;

import java.util.List;

import me.xx.library.dao.BorrowBookDao;
import me.xx.library.dao.impl.BorrowBookDaoImpl;
import me.xx.library.entity.BorrowBook;
import me.xx.library.service.BorrowBookService;
import me.xx.library.utils.PageBean;

public class BorrowBookServiceImpl implements BorrowBookService {

	private BorrowBookDao borrowBookDao=new BorrowBookDaoImpl();
	@Override
	public List<BorrowBook> findCurrentByUsername(String userName) {
		return borrowBookDao.findCurrentByUsername(userName);
	}
	@Override
	public Integer findCountByUsername(String userName) {

		return borrowBookDao.findCountByUsername(userName);
	}
	@Override
	public List<BorrowBook> findHistoryByUsername(String userName) {
		
		return borrowBookDao.findHistoryByUsername(userName);
	}
	@Override
	public BorrowBook findById(Integer id) {
		
		return borrowBookDao.findById(id);
	}
	@Override
	public void updateRecommend(Integer id) {

		borrowBookDao.updateRecommend(id);
	}
	@Override
	public void add(BorrowBook borrowBook) {

		borrowBookDao.add(borrowBook);
	}
	@Override
	public void Renew(BorrowBook borrowBook) {

		borrowBookDao.Renew(borrowBook);
	}
	@Override
	public List<BorrowBook> getBorrowBooks() {

		return borrowBookDao.getBorrowBooks();
	}
	@Override
	public void findByPage(PageBean<BorrowBook> pb,Integer state) {

		borrowBookDao.findByPage(pb,state);
	}
	@Override
	public void returnBook(BorrowBook borrowBook) {

		borrowBookDao.returnBook(borrowBook);
	}
	@Override
	public void updateFine(BorrowBook borrowBook) {

		borrowBookDao.updateFine(borrowBook);
	}
	@Override
	public List<BorrowBook> findOverdue(String username) {
		return borrowBookDao.findOverdue(username);
	}
	@Override
	public void findFineByPage(PageBean<BorrowBook> pb, Integer state) {

		borrowBookDao.findFineByPage(pb, state);
	}
	@Override
	public void payBook(Integer id) {

		borrowBookDao.payBook(id);
	}
	@Override
	public void payLost(Integer id) {

		borrowBookDao.payLost(id);
	}
	@Override
	public List<BorrowBook> findLost(String username) {
		return borrowBookDao.findLost(username);
	}
}
