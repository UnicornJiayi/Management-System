package com.cx.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.cx.model.Student;
import com.cx.service.StudentService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Component("studentAction")
@Scope("prototype")
public class StudentAction extends ActionSupport {
	
	private String sno;
	
	@Resource(name="studentService")
	private StudentService studentService;
	
	
	public String getPassword() throws Exception{
		Student student = studentService.getStudentBySno(sno);
		String password = student.getSpassword();
		ActionContext.getContext().getSession().put("password", password);
		return SUCCESS;
	}
	
	public String deltestudent() throws Exception
	{
		studentService.deleteStudentBySno(sno);
		return SUCCESS;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public StudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	
	

}
