package com.cx.action;


import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.cx.service.StudentService;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.cx.model.Student;
import com.cx.service.StudentService;

import com.opensymphony.xwork2.ActionSupport;
@Component("registAction")
@Scope("prototype")
public class RegistAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;	
	private String sno;
	private String name;
	private String password;
	private String sex;
	@Resource(name="studentService")
	private StudentService studentService;
	
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
	HttpSession session = request.getSession();
	
	
	/**
	 * 学生注册时判断用户名是否可用
	 * @return
	 * @throws Exception
	 * @author chai
	 */
	public String studentSnoCheck() throws Exception
	{
		PrintWriter out=response.getWriter();
		if(studentService.getStudentBySno(this.sno)==null){
			out.write("o");
		}else{
			out.write("f");
		}
		out.close();
		return "d";
	}
	
	/*
	 * 学生注册
	 * @return 
	 * @thorws Exception
	 * @author
	 */
	public String studentRegist() throws Exception
	{
		Student  student = new Student();
		student.setSno(this.sno);
		student.setSname(this.name);
		student.setSpassword(this.password);
		student.setSsex(this.sex);
		studentService.save(student);
		return SUCCESS;
	}
	
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public StudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	
	
	


}
