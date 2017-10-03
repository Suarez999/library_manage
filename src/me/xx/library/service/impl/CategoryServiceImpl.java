package me.xx.library.service.impl;

import java.util.List;

import me.xx.library.dao.CategoryDao;
import me.xx.library.dao.impl.CategoryDaoImpl;
import me.xx.library.entity.Category;
import me.xx.library.service.CategoryService;

public class CategoryServiceImpl implements CategoryService{

	private CategoryDao categoryDao=new CategoryDaoImpl();
	@Override
	public List<Category> getAll() {
		
		return categoryDao.getAll();
	}

}
