package com.cx.action;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Component("updateWorkAction")
@Scope("prototype")
public class UpdateWorkAction extends ActionSupport {
	 
	private String aring;
	
	
	/*
	 * 修改作业编号为wring的作业
	 * @param wring
	 * @return 
	 * @author chai
	 * 
	 */
	@Override
	public String execute() throws Exception {
		ActionContext.getContext().getSession().remove("text");
		String absPath = new File(((HttpServletRequest) 
				ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST)).getRealPath("/")).getParent();
		String path = absPath+"\\manager\\teacher\\everydaywork\\作业"+this.aring+".txt";
		FileReader fr = new FileReader(path);
		BufferedReader br = new BufferedReader(fr);
		String text = "";
		String s = null;
		while((s = br.readLine())!= null)
		{		
			if(text.equals(""))
				text+=s;
			else
				text= text+"\n"+s;
		}
		br.close();
		fr.close();
		ActionContext.getContext().getSession().put("text", text);
		ActionContext.getContext().getSession().put("aring",aring);
		return SUCCESS;
	}
	
	public String selectWorksByWring() throws Exception
	{
		String absPath = new File(((HttpServletRequest) 
				ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST)).getRealPath("/")).getParent();
		String path = absPath+"\\manager\\upload\\work\\作业"+this.aring;
		File file = new File(path);
		File[] filelist = file.listFiles();
		List<File> flist = new LinkedList<File>();
		for(int i = 0;i <filelist.length;i++)
		{
			flist.add(filelist[i]);
		}
		ActionContext.getContext().getSession().put("filelist", flist);
		ActionContext.getContext().getSession().put("wring",aring); //批改作业的轮数
		return SUCCESS;
	}

	public String getAring() {
		return aring;
	}

	public void setAring(String aring) {
		this.aring = aring;
	}
	
	
	

}
