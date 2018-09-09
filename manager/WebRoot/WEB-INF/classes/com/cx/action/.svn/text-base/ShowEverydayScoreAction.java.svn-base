package com.cx.action;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.cx.model.Student;
import com.cx.model.Work;
import com.cx.service.StudentService;
import com.cx.service.WorkService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Component("showEverydayScoreAction")
@Scope("prototype")
public class ShowEverydayScoreAction extends ActionSupport {

	@Resource(name="workService")
	private WorkService workService;
	
	@Resource(name="studentService")
	private StudentService studentService;
	
	@Override
	public String execute() throws Exception {
		Student student = null;
		List<Work> workList = null;
		workList =	workService.getAllScore();
		List<Student> slist = studentService.getAllStudent();
		Map<Integer, String> map = new HashMap<Integer, String>();
		Iterator<Student> it = slist.iterator();
		while(it.hasNext())
		{
			student = it.next();
			map.put(student.getId(), student.getSno());
		}
		ActionContext.getContext().getSession().put("worksList", workList);
		ActionContext.getContext().getSession().put("map", map);
		return SUCCESS;
	}

	public WorkService getWorkService() {
		return workService;
	}

	public void setWorkService(WorkService workService) {
		this.workService = workService;
	}

	public StudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	
	
	
}
