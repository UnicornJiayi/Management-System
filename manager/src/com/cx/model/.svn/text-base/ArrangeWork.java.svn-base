package com.cx.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/*
 * 布置作业实体类
 * @author chai
 * 
 */

@Entity
@Table(name="ArrangeWork")
public class ArrangeWork implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private Integer id;            //主键,自增
	
	@ManyToOne(cascade={},fetch=FetchType.LAZY,optional=true,targetEntity=Teacher.class)
	@JoinColumn(name="tno")
	private Teacher teacher;        //外键,教师号
	
	@Column(nullable=false)
	private Integer aring=0;         //作业的轮数
	
	@Column(nullable=false)
	private String path="";        //作业所在的路径  

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public Integer getAring() {
		return aring;
	}

	public void setAring(Integer aring) {
		this.aring = aring;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
	
	
	

}
