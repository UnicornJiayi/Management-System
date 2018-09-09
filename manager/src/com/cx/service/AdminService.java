package com.cx.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.cx.dao.AdminDao;
import com.cx.model.Admin;


@Component("adminService")
public class AdminService {

	
	@Resource(name="adminDao")
	private AdminDao adminDao;
	
	/*
	 * 根据no查找管理员
	 * @param no
	 * @return 
	 * @author chai
	 */
	public Admin getAdminByNo(String no)
	{
		return adminDao.getAdminByNo(no);
	}

	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	
	
	
}
