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
 * 作业实体类
 * @author chai
 * 
 */
@Entity
@Table(name="work")
public class Work implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private Integer id;                //主键，自增
	
	@ManyToOne(cascade={},fetch=FetchType.LAZY,optional=true,targetEntity=Student.class)
	@JoinColumn(name="sno")
	private Student student;           //学号
	
	@Column(nullable=false)
	private Integer wring;            //作业的轮数
	
	
	@Column(nullable=false)
	private Integer grade;            //该轮作业的分数


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public Student getStudent() {
		return student;
	}


	public void setStudent(Student student) {
		this.student = student;
	}


	public Integer getWring() {
		return wring;
	}


	public void setWring(Integer wring) {
		this.wring = wring;
	}


	public Integer getGrade() {
		return grade;
	}


	public void setGrade(Integer grade) {
		this.grade = grade;
	}

	
}
