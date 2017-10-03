package me.xx.library.dao;

import java.util.List;

import me.xx.library.entity.Reservation;
import me.xx.library.utils.PageBean;

public interface ReservationDao {

	void add(Reservation reservation);
	
	Integer selectCountByUsername(String userName);
	
	List<Reservation> findByUsername(String userName);
	
	void delete(Integer id);
	
	void truncate();
	
	void findByPage(PageBean<Reservation> pb);
	
	Integer findCountByPage(String keyWord);
	
	Reservation findById(Integer id);
}
