package com.practise.spring.mvc.college.service;

import java.util.List;
import com.practise.spring.mvc.college.entity.Student;

public interface StudentService {

	public List<Student> getStudents();

	public Student getStudent(int id);

	public void saveStudent(Student studentBean);

	public void deleteStudent(int id);
	
	public List<Student> findByCollegeId(Integer userId);
}
