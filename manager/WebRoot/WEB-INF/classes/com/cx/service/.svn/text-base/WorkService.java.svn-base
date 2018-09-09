package com.cx.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.cx.dao.WorkDao;
import com.cx.model.Work;

@Component("workService")
public class WorkService {
	
	@Resource(name="workDao")
	private WorkDao workDao;
	

	/*
	 * 插入学生作业情况
	 * @param String sno Integer score Integer wring
	 * @author chai
	 */
	public void saveWork(String sno,Integer score,Integer wring)
	{
		workDao.saveWork(sno, score, wring);
	}
	
	/*
	 * 上传学生作业
	 * @param String sno Integer score Integer wring
	 * @author xion
	 */
	public void updateWork(String sno,Integer score,Integer wring)
	{
		workDao.updateWork(sno, score, wring);
	}
	
	/*
	 * 显示学生平时成绩
	 * @return 
	 * @author chai
	 */
	public List<Work> getAllScore()
	{
		return workDao.getAllScore();
	}

	public WorkDao getWorkDao() {
		return workDao;
	}

	public void setWorkDao(WorkDao workDao) {
		this.workDao = workDao;
	}

	
	
}
