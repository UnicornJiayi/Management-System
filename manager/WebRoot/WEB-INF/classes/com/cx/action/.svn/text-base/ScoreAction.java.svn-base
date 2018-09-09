package com.cx.action;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.cx.service.WorkService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Component("scoreAction")
@Scope("prototype")
public class ScoreAction extends ActionSupport {
	
	private String sno;
	private String wring;
	private String score;
	
	@Resource(name="workService")
	private WorkService workService;
	
	public String addScore() throws Exception
	{
		File file = null;
		String	Sno = this.sno.substring(0, 11);
		workService.saveWork(Sno, Integer.parseInt(score), Integer.parseInt(wring));
		Object obj = ActionContext.getContext().getSession().get("filelist");
		if(obj != null)
		{
			List<File> filelist = (List<File>)obj;
			for(int i = 0 ; i < filelist.size(); i++)
			{
				if(filelist.get(i).getName().equals(sno))
					file = filelist.get(i);
			}
			filelist.remove(file);
			ActionContext.getContext().getSession().remove("filelist");
			ActionContext.getContext().getSession().put("filelist", filelist);
		}
		return SUCCESS;
	}
	
	public WorkService getWorkService() {
		return workService;
	}

	public void setWorkService(WorkService workService) {
		this.workService = workService;
	}

	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getWring() {
		return wring;
	}
	public void setWring(String wring) {
		this.wring = wring;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	
	
	

}
