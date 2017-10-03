package me.xx.library.service.impl;

import java.util.List;

import me.xx.library.dao.SubjectDao;
import me.xx.library.dao.impl.SubjectDaoImpl;
import me.xx.library.entity.Subject;
import me.xx.library.service.SubjectService;

public class SubjectServiceImpl implements SubjectService{

	private SubjectDao subjectDao=new SubjectDaoImpl();
	@Override
	public List<Subject> findByCat(String cat) {
		List<Subject> list = subjectDao.findByCat(cat);
		return list;
	}

}
