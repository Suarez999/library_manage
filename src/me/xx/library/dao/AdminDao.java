package me.xx.library.dao;

import me.xx.library.entity.Admin;

public interface AdminDao {

	Admin login(String username,String pwd);
}
