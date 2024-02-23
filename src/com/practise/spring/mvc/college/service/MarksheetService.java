package com.practise.spring.mvc.college.service;

import java.util.List;
import com.practise.spring.mvc.college.entity.Marksheet;

public interface MarksheetService {

	public List<Marksheet> getMarksheets();

	public void saveMarksheet(Marksheet marksheet);

	public Marksheet getMarksheet(int id);

	public void deleteMarksheet(int id);
	
	public List<Marksheet> getMarksheetIdBasedOnUserId(Integer userId);
}
