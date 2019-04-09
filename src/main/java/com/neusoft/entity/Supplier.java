package com.neusoft.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Supplier {
	private Integer supno;
	private String supname;
	private String supallname;
	private String head;
	private String headname;
	private String tel;
	private String fax;
	private String mobtel;
	private String address;
	private String facaddress;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date importdate;
	public Supplier() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Supplier(Integer supno, String supname, String supallname,
			String head, String headname, String tel, String fax,
			String mobtel, String address, String facaddress, Date importdate) {
		super();
		this.supno = supno;
		this.supname = supname;
		this.supallname = supallname;
		this.head = head;
		this.headname = headname;
		this.tel = tel;
		this.fax = fax;
		this.mobtel = mobtel;
		this.address = address;
		this.facaddress = facaddress;
		this.importdate = importdate;
	}
	public Integer getSupno() {
		return supno;
	}
	public void setSupno(Integer supno) {
		this.supno = supno;
	}
	public String getSupname() {
		return supname;
	}
	public void setSupname(String supname) {
		this.supname = supname;
	}
	public String getSupallname() {
		return supallname;
	}
	public void setSupallname(String supallname) {
		this.supallname = supallname;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getHeadname() {
		return headname;
	}
	public void setHeadname(String headname) {
		this.headname = headname;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getMobtel() {
		return mobtel;
	}
	public void setMobtel(String mobtel) {
		this.mobtel = mobtel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getFacaddress() {
		return facaddress;
	}
	public void setFacaddress(String facaddress) {
		this.facaddress = facaddress;
	}
	public Date getImportdate() {
		return importdate;
	}
	public void setImportdate(Date importdate) {
		this.importdate = importdate;
	}
	@Override
	public String toString() {
		return "Supplier [supno=" + supno + ", supname=" + supname
				+ ", supallname=" + supallname + ", head=" + head
				+ ", headname=" + headname + ", tel=" + tel + ", fax=" + fax
				+ ", mobtel=" + mobtel + ", address=" + address
				+ ", facaddress=" + facaddress + ", importdate=" + importdate
				+ "]";
	}
	
}
