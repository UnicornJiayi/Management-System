package com.cx.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.cx.dao.StudentDao;
import com.cx.model.Student;


@Component("studentService")
public class StudentService {
	
	@Resource(name="studentDao")
	private StudentDao studentDao;
	
	/**
	 * 保存学生
	 * @param student
	 * @return
	 * @author chai
	 */
	public boolean save(Student student){
		return studentDao.save(student);
	}
	
	/*
	 * 根据学号查找学生
	 * @param String sno
	 * @return 
	 * @author chai
	 */
	public Student getStudentBySno(String sno)
	{
		return studentDao.getStudentBySno(sno);
	}
	/*
	 * 得到所有学生
	 * @return 
	 * @author chai
	 */
	public List<Student> getAllStudent()
	{
		return studentDao.getAllStudent();
	}
	
	/*
	 * 根据学号删除学生
	 * @param sno
	 * @author chai
	 * 
	 */
	public void deleteStudentBySno(String sno)
	{
		studentDao.deleteStudentBySno(sno);
	}

}
