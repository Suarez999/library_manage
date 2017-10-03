package me.xx.library.dao;

import java.util.List;

import me.xx.library.entity.Recommend;
import me.xx.library.utils.PageBean;

public interface RecommendDao {

	void add(Recommend recommend);
	
	List<Recommend> getAll(String userName);
	
	void findByPage(PageBean<Recommend> pb);
	
	Integer findCountByPage(String keyWord);
}
