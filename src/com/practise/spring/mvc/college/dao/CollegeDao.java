package com.practise.spring.mvc.college.dao;

import java.util.List;
import com.practise.spring.mvc.college.entity.College;

public interface CollegeDao {

	public List<College> getColleges();

	public void saveCollege(College college);

	public College getCollege(int id);
	
	public void deleteCollege(int id);
	
	public void update(College c);
	
	public List<College> findByProperty(String propName, Object propValue);
	
	public College getCollegeIdBasedOnUserId(Integer userId);
}
