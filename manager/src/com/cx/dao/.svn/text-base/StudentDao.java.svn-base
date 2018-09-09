package com.cx.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.cx.model.Student;
@Component("studentDao")
public class StudentDao {
	
	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;
	
	/**
	 * 保存学生
	 * @param student
	 * @return
	 * @author chai
	 */
	public boolean save(Student student){
		try{
			hibernateTemplate.save(student);
			hibernateTemplate.flush();
			return true;
		}catch(DataAccessException e){
			e.printStackTrace();
			return false;
		}
	}
	
	/*
	 * 根据学号查找学生
	 * @param String sno
	 * @return 
	 * @author chai
	 */
	
	public Student getStudentBySno(String sno)
	{
		Student student = null;
		String hql="from Student s where s.sno="+sno;
		List<Student> list = hibernateTemplate.find(hql);
		if(list.size()>0 && list != null)
		{
			student = list.get(0);
		}
		return student;
	}
	/*
	 * 得到所有学生
	 * @return 
	 * @author chai
	 */
	public List<Student> getAllStudent()
	{
		List<Student> studentList = null;
		String hql = "from Student";
		studentList = hibernateTemplate.find(hql);
		return studentList;
	}
	
	/*
	 * 根据学号删除学生
	 * @param sno
	 * @author chai
	 * 
	 */
	public void deleteStudentBySno(String sno)
	{
		Student student = this.getStudentBySno(sno);
		hibernateTemplate.delete(student);
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	

}
