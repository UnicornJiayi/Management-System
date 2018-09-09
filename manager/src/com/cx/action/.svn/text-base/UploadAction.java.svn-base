package com.cx.action;

import com.cx.model.Student;
import com.cx.model.Teacher;
import com.cx.service.WorkService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import sun.applet.Main;

import java.io.*;

import javax.annotation.Resource;
@Component("uploadAction")
@Scope("prototype")
public class UploadAction extends ActionSupport
{
	@Resource(name="workService")
	private WorkService workService;
	
	private String num;
	
	private File upload;
	
	private String uploadContentType;
	
	private String uploadFileName;
	
	private String savePath;	

	public WorkService getWorkService() {
		return workService;
	}

	public void setWorkService(WorkService workService) {
		this.workService = workService;
	}

	public void setSavePath(String value)
	{
		this.savePath = value;
	}
	
	private String getSavePath() throws Exception 
	{
		return ServletActionContext.getServletContext()
			.getRealPath(savePath+num);
	}
	
	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public void setUpload(File upload) 
	{
		this.upload = upload; 
	}
	public File getUpload() 
	{
		return (this.upload); 
	}

	
	public void setUploadContentType(String uploadContentType) 
	{
		this.uploadContentType = uploadContentType; 
	}
	public String getUploadContentType()
	{
		return (this.uploadContentType); 
	}

	
	public void setUploadFileName(String uploadFileName) 
	{
		this.uploadFileName = uploadFileName; 
	}
	public String getUploadFileName() 
	{
		return (this.uploadFileName); 
	}
	/*
	 * 将上传作业的名字以登录学生的学号命名
	 * @return void
	 * @author xiong
	 */
	public static void update(String n,String o){
		File f=new File(o);   
        String c=f.getParent();   
        File mm=new File(c+"/"+n+".txt");   
        if(f.renameTo(mm))   
        {   
        System.out.println("修改成功!");   
        }   
        else   
        {   
        System.out.println("修改失败");   
        }             
	}
	/*
	 * 将上传作业写入输出流里,并在输入流内写入,上传到服务器制定文件夹内;
	 * 并将上传作业的学生的信息写入数据库;
	 * @return String
	 * @author xiong
	 */
	@Override
	public String execute() throws Exception
	{	
		Student student = (Student)ActionContext.getContext().getSession().get("Student");
		Integer sum=Integer.parseInt(num);		
		workService.updateWork(student.getSno(), 0, sum);
		FileOutputStream fos = new FileOutputStream(getSavePath()
			+ "\\" + getUploadFileName());		
	    FileInputStream fis = new FileInputStream(getUpload());		
	    byte[] buffer = new byte[1024];
		int len = 0;
		while ((len = fis.read(buffer)) > 0)
		{
			fos.write(buffer , 0 , len);
		}		
		fos.close();
		fis.close();
		update(student.getSno(), getSavePath()+ "\\" + getUploadFileName());
		return SUCCESS;		
	}
}