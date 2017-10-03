package me.xx.library.service;

import java.util.List;

import me.xx.library.entity.Reservation;
import me.xx.library.utils.PageBean;

public interface ReservationService {

	void add(Reservation reservation);
	
	Integer selectCountByUsername(String userName);

	List<Reservation> findByUsername(String userName);
	
	void delete(Integer id);
	
	void truncate();
	
	void findByPage(PageBean<Reservation> pb);
	
	Reservation findById(Integer id);
}
