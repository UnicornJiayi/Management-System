package com.cx.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/*
 * 学生实体类
 * @author chai
 * 
 */
@Entity
@Table(name="student")
public class Student implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	
	@Id
	@GeneratedValue
	private Integer id;                  //主键，自增
	
	@Column(nullable=false,length=11,unique=true)
	private String sno="";                   //学号,长度11,不为空,唯一
	
	@Column(nullable=false,length=5)
	private String sname="";                 //姓名,长度5，可空
	
	@Column(nullable=false,length=11)
	private String spassword="";         //密码,长度11，不为空
	
	@Column(nullable=false,length=2)
	private String ssex="10";                  //性别,长度为2,不为空,10为男 11为女
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSsex() {
		return ssex;
	}
	public void setSsex(String ssex) {
		this.ssex = ssex;
	}
	public String getSpassword() {
		return spassword;
	}
	public void setSpassword(String spassword) {
		this.spassword = spassword;
	}
	
	
	

}
