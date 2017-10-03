package me.xx.library.service.impl;

import java.util.List;

import me.xx.library.dao.RecommendDao;
import me.xx.library.dao.impl.RecommendDaoImpl;
import me.xx.library.entity.Recommend;
import me.xx.library.service.RecommendService;
import me.xx.library.utils.PageBean;

public class RecommendServiceImpl implements RecommendService{

	private RecommendDao recommendDao=new RecommendDaoImpl();
	@Override
	public void add(Recommend recommend) {
		recommendDao.add(recommend);
	}

	@Override
	public List<Recommend> getAll(String userName) {
		return recommendDao.getAll(userName);
	}

	@Override
	public void findByPage(PageBean<Recommend> pb) {
		recommendDao.findByPage(pb);
	}

}
