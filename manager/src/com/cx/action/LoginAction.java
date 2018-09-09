package com.cx.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.cx.model.Admin;
import com.cx.model.Student;
import com.cx.model.Teacher;
import com.cx.service.AdminService;
import com.cx.service.StudentService;
import com.cx.service.TeacherService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Component("loginAction")
@Scope("prototype")
public class LoginAction extends ActionSupport {
	
	private String sno;
	private String password;
	private String selectvalue;
	
	@Resource(name="studentService")
	private StudentService studentService;
	
	@Resource(name="teacherService")
	private TeacherService teacherService;
	
	@Resource(name="adminService")
	private AdminService adminService;
	
	
	@Override
	public String execute() throws Exception {
		Student student;
		Teacher teacher;
		Admin admin;
		if(this.selectvalue.equals("1"))
		{
			student = studentService.getStudentBySno(this.sno);
			if(student.getSpassword().equals(this.password))
			{
				ActionContext.getContext().getSession().put("Student", student);
				return "student";
			}else
			{
				return ERROR;
			}
		}else if(this.selectvalue.equals("2"))
		{
			teacher = teacherService.getTeacherByNo(this.sno);
			if(teacher.getTpassword().equals(this.password))
			{
				ActionContext.getContext().getSession().put("Teacher", teacher);
				return "teacher";
			}else
			{
				return ERROR;
			}
		}else if(this.selectvalue.equals("3"))
		{
			admin = adminService.getAdminByNo(this.sno);
			if(admin.getApassword().equals(this.password))
			{
				ActionContext.getContext().getSession().put("Admin", admin);
				return "admin";
			}
			else
			{
				return ERROR;
			}
		}
			return ERROR;
	}
	
	public StudentService getStudentService() {
		return studentService;
	}
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	public TeacherService getTeacherService() {
		return teacherService;
	}
	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}
	public AdminService getAdminService() {
		return adminService;
	}
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
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
	public String getSelectvalue() {
		return selectvalue;
	}
	public void setSelectvalue(String selectvalue) {
		this.selectvalue = selectvalue;
	}
	
	
	

}
