package com.practise.spring.mvc.college.service;

import java.util.List;
import com.practise.spring.mvc.college.entity.College;

public interface CollegeService {

	public List<College> getColleges();

	public void saveCollege(College college);

	public College getCollege(int id);

	public void deleteCollege(int id);
	
	public College getCollegeIdBasedOnUserId(Integer userId);
}
