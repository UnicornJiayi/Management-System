package com.cx.action;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.cx.dao.ArrangeWorkDao;
import com.cx.model.ArrangeWork;
import com.cx.model.Teacher;
import com.cx.service.AdminService;
import com.cx.service.ArrangeWorkService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Component("everydayworkAction")
@Scope("prototype")
public class everydayworkAction extends ActionSupport {
	
	private String wring;
	private String worktxt;
	
	
	@Resource(name="arrangeWorkService")
	private ArrangeWorkService arrangeWorkService;
	

	/*
	 * 将平时作业存在txt文本里,并把路径存在数据内
	 * @return 
	 * @author chai
	 */
	public String everydaywork() throws Exception
	{
		String absPath = new File(((HttpServletRequest) 
				ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST)).getRealPath("/")).getParent();
		String path = absPath+"/manager/teacher/everydaywork";
		File everydaywork = new File(path);
		File[] list = everydaywork.listFiles();
		if(list.length != 0)
		{
			for(int i = 0 ; i < list.length;i++)
			{
				if(list[i].getName().substring(2,list[i].getName().length()).equals(this.wring))
				{
					list[i].delete();
				}else{
					
					File f = new File(path,"作业"+this.wring+".txt");
					f.createNewFile();
					FileWriter fw = new FileWriter(f);
					 fw.write(this.worktxt, 0, this.worktxt.length());
					 fw.close();
					 String path2 = path+"/作业"+this.wring+".txt";
					 Teacher teacher = (Teacher)ActionContext.getContext().getSession().get("Teacher");					 
					 arrangeWorkService.deleteByWring(Integer.parseInt(this.wring));
					 arrangeWorkService.saveArrangeWork(path2, teacher, Integer.parseInt(this.wring));
				}
			}
		}else
		{
			File f = new File(path,"作业"+this.wring+".txt");
			f.createNewFile();
			FileWriter fw = new FileWriter(f);
			 fw.write(this.worktxt, 0, this.worktxt.length());
			 fw.close();
			 String path2 = path+"/作业"+this.wring+".txt";
			 Teacher teacher = (Teacher)ActionContext.getContext().getSession().get("Teacher");
			 arrangeWorkService.saveArrangeWork(path2, teacher, Integer.parseInt(this.wring));
		}
		
		return SUCCESS;
	}
	
	/*
	 * 得到所有的平时作业
	 * @author chai
	 */
	public String getAllarrangeWork()
	{
		List<ArrangeWork> arrangeworks = arrangeWorkService.getAllArrangeWork();
		if(arrangeworks != null)
		{
			ActionContext.getContext().getSession().put("arrangeworks", arrangeworks);
			return SUCCESS;
		}else
		{
			return ERROR;
		}
	}
	
	
	
	public ArrangeWorkService getArrangeWorkService() {
		return arrangeWorkService;
	}
	public void setArrangeWorkService(ArrangeWorkService arrangeWorkService) {
		this.arrangeWorkService = arrangeWorkService;
	}
	public String getWring() {
		return wring;
	}
	public void setWring(String wring) {
		this.wring = wring;
	}
	public String getWorktxt() {
		return worktxt;
	}
	public void setWorktxt(String worktxt) {
		this.worktxt = worktxt;
	}
}
