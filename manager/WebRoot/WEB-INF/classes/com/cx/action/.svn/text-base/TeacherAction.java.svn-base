package com.cx.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.cx.service.TeacherService;
import com.opensymphony.xwork2.ActionSupport;

@Component("teacherAction")
@Scope("prototype")
public class TeacherAction extends ActionSupport {
	
	private String tno;
	private String tname;
	private String tpassword;
	
	@Resource(name="teacherService")
	private TeacherService teacherService;
	
	@Override
	public String execute() throws Exception {
		teacherService.saveTeacher(tno, tname, tpassword);
		return SUCCESS;
	}
	public String getTno() {
		return tno;
	}
	public void setTno(String tno) {
		this.tno = tno;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTpassword() {
		return tpassword;
	}
	public void setTpassword(String tpassword) {
		this.tpassword = tpassword;
	}
	public TeacherService getTeacherService() {
		return teacherService;
	}
	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}
	
	
	

}
