package com.cx.action;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Component("deleteWorkAction")
@Scope("prototype")
public class DeleteWorkAction extends ActionSupport{
	
	private String wring;
	private String sno;
	
	@Override
	public String execute() throws Exception {
		String absPath = new File(((HttpServletRequest) 
				ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST)).getRealPath("/")).getParent();
		String path = absPath+"\\manager\\upload\\work\\作业"+this.wring;
		File file = new File(path);
		File[] fileList = file.listFiles();
		for(int i = 0 ; i < fileList.length;i++)
		{
			if(fileList[i].getName().equals(sno+".txt"))
				fileList[i].delete();
		}
		return SUCCESS;
	}
	public String getWring() {
		return wring;
	}
	public void setWring(String wring) {
		this.wring = wring;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	
	

}
