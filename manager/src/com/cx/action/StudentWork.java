package com.cx.action;

import com.cx.model.Student;
import com.cx.service.WorkService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class StudentWork extends ActionSupport{
	
	private WorkService workService;
	
	private Student student;

	public WorkService getWorkService() {
		return workService;
	}

	public void setWorkService(WorkService workService) {
		this.workService = workService;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}


	public String execute() throws Exception{
		student=(Student)ActionContext.getContext().getSession().get("Student");
		return SUCCESS;
	}

}
