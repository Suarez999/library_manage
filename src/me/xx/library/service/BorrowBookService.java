package me.xx.library.service;

import java.util.List;

import me.xx.library.entity.BorrowBook;
import me.xx.library.utils.PageBean;

public interface BorrowBookService {

	List<BorrowBook> findCurrentByUsername(String userName);
	
	Integer findCountByUsername(String userName);
	
	List<BorrowBook> findHistoryByUsername(String userName);
	
	BorrowBook findById(Integer id);
	
	void updateRecommend(Integer id);
	
	void add(BorrowBook borrowBook);
	
	void Renew(BorrowBook borrowBook);
	
	List<BorrowBook> getBorrowBooks();
	
	void findByPage(PageBean<BorrowBook> pb,Integer state);
	
	void returnBook(BorrowBook borrowBook);
	
	void updateFine(BorrowBook borrowBook);
	
	List<BorrowBook> findOverdue(String username);
	
	void findFineByPage(PageBean<BorrowBook> pb,Integer state);
	
	void payBook(Integer id);
	
	void payLost(Integer id);
	
	List<BorrowBook> findLost(String username);
}
