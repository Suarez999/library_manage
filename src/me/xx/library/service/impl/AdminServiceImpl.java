package me.xx.library.service.impl;

import me.xx.library.dao.AdminDao;
import me.xx.library.dao.impl.AdminDaoImpl;
import me.xx.library.entity.Admin;
import me.xx.library.service.AdminService;

public class AdminServiceImpl implements AdminService {

	private AdminDao adminDao=new AdminDaoImpl();
	@Override
	public Admin login(String username, String pwd) {
		
		return adminDao.login(username, pwd);
	}

}
