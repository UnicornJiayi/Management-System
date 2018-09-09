package com.cx.model;

import java.io.Serializable;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/*
 * 教师实体类
 * @author chai
 * 
 */
@Entity
@Table(name="teacher")
public class Teacher implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private Integer id;             //主键,自增
	
	@Column(nullable=false,length=11,unique=true)
	private String tno="";             //教师号  长度11,不可为空,唯一
	
	@Column(nullable=false,length=5,unique=true)
	private String tname="";           //教师姓名,不空,长度5,唯一
	
	@Column(nullable=false,length=11)
	private String tpassword="";       //教师密码 长度为11 不空

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTno() {
		return tno;
	}

	public void setTno(String tno) {
		this.tno = tno;
	}

	public String getTnam() {
		return tname;
	}

	public void setTnam(String tnam) {
		this.tname = tnam;
	}

	public String getTpassword() {
		return tpassword;
	}

	public void setTpassword(String tpassword) {
		this.tpassword = tpassword;
	}

	
}
