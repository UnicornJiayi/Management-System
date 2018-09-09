package com.cx.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.cx.dao.StudentDao;
import com.cx.dao.TeacherDao;
import com.cx.model.Teacher;

@Component("teacherService")
public class TeacherService {
	
	@Resource(name="teacherDao")
	private TeacherDao teacherDao;
	
	/*
	 * 根据教师号查找教师
	 * @param no
	 * @return 
	 * @author
	 */
	public Teacher getTeacherByNo(String no)
	{
		return teacherDao.getTeacherByNO(no);
	}
	
	/*
	 * 保存教师
	 * @param 
	 * @author chai
	 */
	public void saveTeacher(String tno,String tname,String tpassword)
	{
		teacherDao.saveTeacher(tno, tname, tpassword);
	}

	public TeacherDao getTeacherDao() {
		return teacherDao;
	}

	public void setTeacherDao(TeacherDao teacherDao) {
		this.teacherDao = teacherDao;
	}
	
	
	
	

}
