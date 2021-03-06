package com.cx.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.cx.model.Teacher;

@Component("teacherDao")
public class TeacherDao {
	
	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;
	
	/*
	 * 根据教师号查找教师
	 * @param sno
	 * @return 
	 * @author chai
	 */
	public Teacher getTeacherByNO(String no)
	{
		Teacher teacher = null;
		String hql = "from Teacher t where t.tno="+no;
		List<Teacher>  teacherlist= hibernateTemplate.find(hql);
		if(teacherlist.size()>0)
		{
			teacher = teacherlist.get(0);
		}
		return teacher;
	}
	/*
	 * 保存教师
	 * @param 
	 * @author chai
	 */
	public void saveTeacher(String tno,String tname,String tpassword)
	{
		Teacher teacher = new Teacher();
		teacher.setTnam(tname);
		teacher.setTno(tno);
		teacher.setTpassword(tpassword);
		hibernateTemplate.save(teacher);
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	
	

}
