package me.xx.library.service;

import java.util.List;

import me.xx.library.entity.Recommend;
import me.xx.library.utils.PageBean;

public interface RecommendService {

	void add(Recommend recommend);
	
	List<Recommend> getAll(String userName);
	
	void findByPage(PageBean<Recommend> pb);
}
