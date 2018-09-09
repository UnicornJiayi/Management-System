package com.cx.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.cx.model.Admin;

@Component("adminDao")
public class AdminDao {
	
	
	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;

	
	/*
	 * 根据no查找admin
	 * @param no
	 * @return 
	 * @author chai
	 */
	public Admin getAdminByNo(String no)
	{
		Admin admin = null;
		String hql = "from Admin a where a.ausername="+no;
		List<Admin> adminlist =	hibernateTemplate.find(hql);
		if(adminlist.size()>0)
		{
			admin = adminlist.get(0);
		}
		return admin;
	}
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	

}
