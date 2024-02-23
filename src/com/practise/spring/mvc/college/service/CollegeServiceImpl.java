package com.practise.spring.mvc.college.service;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.practise.spring.mvc.college.dao.CollegeDao;
import com.practise.spring.mvc.college.entity.College;

@Repository
public class CollegeServiceImpl implements CollegeService {

	@Autowired
	private CollegeDao collegeBeanDao;

	@Override
	@Transactional
	public List<College> getColleges() {
		return collegeBeanDao.getColleges();
	}

	@Override
	@Transactional
	public void saveCollege(College college) {
		collegeBeanDao.saveCollege(college);
	}

	@Override
	@Transactional
	public College getCollege(int id) {
		return collegeBeanDao.getCollege(id);
	}

	@Override
	@Transactional
	public void deleteCollege(int id) {
		collegeBeanDao.deleteCollege(id);
	}
	
	@Override
	@Transactional
	public College getCollegeIdBasedOnUserId(Integer userId) {
		return collegeBeanDao.getCollegeIdBasedOnUserId(userId);
	}
}
