package me.xx.library.service.impl;

import java.util.List;

import me.xx.library.dao.ReservationDao;
import me.xx.library.dao.impl.ReservationDaoImpl;
import me.xx.library.entity.Reservation;
import me.xx.library.service.ReservationService;
import me.xx.library.utils.PageBean;

public class ReservationServiceImpl implements ReservationService{

	private ReservationDao reservationDao=new ReservationDaoImpl();
	@Override
	public void add(Reservation reservation) {
		reservationDao.add(reservation);
	}
	@Override
	public Integer selectCountByUsername(String userName) {
		
		return reservationDao.selectCountByUsername(userName);
	}
	@Override
	public List<Reservation> findByUsername(String userName) {

		List<Reservation> list = reservationDao.findByUsername(userName);
		return list;
	}
	@Override
	public void delete(Integer id) {

		reservationDao.delete(id);
	}
	@Override
	public void truncate() {

		reservationDao.truncate();
	}
	@Override
	public void findByPage(PageBean<Reservation> pb) {

		reservationDao.findByPage(pb);
	}
	@Override
	public Reservation findById(Integer id) {
		return reservationDao.findById(id);
	}

}
