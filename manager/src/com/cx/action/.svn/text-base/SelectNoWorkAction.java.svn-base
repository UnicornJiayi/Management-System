package com.cx.action;

import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.cx.model.Student;
import com.cx.service.StudentService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Component("selectNoWorkAction")
@Scope("prototype")
public class SelectNoWorkAction extends ActionSupport {
	
	private String wring;
	
	@Resource(name="studentService")
	private StudentService studentService;
	
	@Override
	public String execute() throws Exception {
		List<Student> studentList = null;
		List<Student> nowork = new LinkedList<Student>();
		String absPath = new File(((HttpServletRequest) 
				ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST)).getRealPath("/")).getParent();
		String path = absPath+"\\manager\\upload\\work\\作业"+this.wring;
		File file = new File(path);
		File[] worklist = file.listFiles();
		studentList = studentService.getAllStudent();
		Iterator<Student> it = studentList.iterator();
		Student student = null;
		while(it.hasNext()){
			student = it.next();
			int i ;
			for(i = 0; i < worklist.length;i++)
			{
				if(worklist[i].getName().equals(student.getSno()+".txt"))
					break;
			}
			if(i == worklist.length && worklist[i-1].getName().equals(student.getSno()+".txt") != true)
			{
				nowork.add(student);
			}
			
		}
		ActionContext.getContext().getSession().put("nowork", nowork);
		return SUCCESS;
	}

	public String getWring() {
		return wring;
	}

	public void setWring(String wring) {
		this.wring = wring;
	}

	public StudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	
	

}
