package com.cx.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.cx.model.Student;
import com.cx.model.Work;

@Component("workDao")
public class WorkDao {

	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;
	
	@Resource(name="studentDao")
	private StudentDao studentDao;
	
	/*
	 * 插入学生作业情况
	 * @param String sno Integer score Integer wring
	 * @author chai
	 */
	public void saveWork(String sno,Integer score,Integer wring)
	{   Student student = studentDao.getStudentBySno(sno);
		Work work = new Work();
		work.setStudent(student);
		work.setWring(wring);
		work.setGrade(score);
		hibernateTemplate.saveOrUpdate(work);		
	}
	
	/*
	 * 上传学生作业
	 * @return 
	 * @author xiong
	 */
	public void updateWork(String sno,Integer score,Integer wring)
	{
		Student student = studentDao.getStudentBySno(sno);
		Work work = new Work();
		work.setStudent(student);
		work.setWring(wring);
		work.setGrade(score);
		hibernateTemplate.save(work);		
	}
	 
	/*
	 * 显示学生平时成绩
	 * @return 
	 * @author chai
	 */
	public List<Work> getAllScore()
	{
		List<Work> workList = null;
		String hql = "from Work w group by w.student,w.id,w.wring,w.grade";
		workList = hibernateTemplate.find(hql);
		System.out.println(workList.size());
		return workList;
	}
	
	/*
	 * 显示学生本人平时成绩
	 * @return 
	 * @author xiong
	 */
	public List<Work> getStudentScore()
	{
		List<Work> workList = null;
		String hql = "from Work w  where w.group by w.student,w.id,w.wring,w.grade";
		workList = hibernateTemplate.find(hql);
		System.out.println(workList.size());
		return workList;
	}

	public StudentDao getStudentDao() {
		return studentDao;
	}


	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}


	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	
}
