package com.cx.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.cx.model.ArrangeWork;
import com.cx.model.Teacher;
import com.cx.model.Work;
@Component("arrangeWorkDao")
public class ArrangeWorkDao {
	
	
	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;
	
	/*
	 * 将布置的作业文件地址写进数据库
	 * @param String path, Teacher teacher,Integer wring
	 * @return
	 * @author chai
	 */
	public boolean saveArrangeWork(String path,Teacher teacher,Integer wring)
	{
		try {
			Integer tno = Integer.parseInt(teacher.getTno());
			ArrangeWork arrangeWork = new ArrangeWork();
			arrangeWork.setAring(wring);
			arrangeWork.setPath(path);
			arrangeWork.setTeacher(teacher);
			hibernateTemplate.save(arrangeWork);
			hibernateTemplate.flush();
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	/*
	 * 查找平时作业
	 * @return 
	 * @author chai
	 * 
	 */
	public List<ArrangeWork> getAllArrangeWork()
	{
		List<ArrangeWork> list = null;
		String hql = "from ArrangeWork aw order by aw.aring";
	    list = hibernateTemplate.find(hql);
	    return list;
	}
	
	/*
	 * 根据wring删除数据库里的记录
	 * @param wring
	 * @author chai
	 */
	
	public void deleteByWring(Integer wring)
	{
		List<ArrangeWork> arrangeWorklist = null;
		arrangeWorklist = getByWring(wring,"111");
		for(int i = 0 ; i < arrangeWorklist.size();i++)
		{
			hibernateTemplate.delete(arrangeWorklist.get(i));
			hibernateTemplate.flush();
		}
		
	}
	
	/*
	 * 根据wring查找
	 * @param wring
	 * @return 
	 * @author chai
	 */
	public ArrangeWork getByWring(Integer wring)
	{
		ArrangeWork arrangework = null;
		String hql = "from ArrangeWork aw where aw.aring="+wring;
		List<ArrangeWork> list = hibernateTemplate.find(hql);
		if(list.size() > 0)
		{
			arrangework = list.get(0);
		}
		return arrangework;
	}
	public List<ArrangeWork> getByWring(Integer wring,String s)
	{
		ArrangeWork arrangework = null;
		String hql = "from ArrangeWork aw where aw.aring="+wring;
		List<ArrangeWork> list = hibernateTemplate.find(hql);
		return list;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	
}
