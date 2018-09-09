package com.cx.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.cx.dao.ArrangeWorkDao;
import com.cx.model.ArrangeWork;
import com.cx.model.Teacher;

@Component("arrangeWorkService")
public class ArrangeWorkService {
	
	
	@Resource(name="arrangeWorkDao")
	private ArrangeWorkDao arrangeWorkDao;
	
	
	
	/*
	 * 将布置的作业文件地址写进数据库
	 * @param String path, Teacher teacher,Integer wring
	 * @return
	 * @author chai
	 */
	public boolean saveArrangeWork(String path,Teacher teacher,Integer wring)
	{
		return arrangeWorkDao.saveArrangeWork(path, teacher, wring);
	}
	
	/*
	 * 查找平时作业
	 * @return 
	 * @author chai
	 * 
	 */
	public List<ArrangeWork> getAllArrangeWork()
	{
		return arrangeWorkDao.getAllArrangeWork();
	}
	
	/*
	 * 根据wring查找
	 * @param wring
	 * @return 
	 * @author chai
	 */
	public ArrangeWork getByWring(Integer wring)
	{
		return arrangeWorkDao.getByWring(wring);
	}
	
	/*
	 * 根据wring删除数据库里的记录
	 * @param wring
	 * @author chai
	 */
	
	public void deleteByWring(Integer wring)
	{
		arrangeWorkDao.deleteByWring(wring);
	}

	public ArrangeWorkDao getArrangeWorkDao() {
		return arrangeWorkDao;
	}

	public void setArrangeWorkDao(ArrangeWorkDao arrangeWorkDao) {
		this.arrangeWorkDao = arrangeWorkDao;
	}
	
	
	

}
