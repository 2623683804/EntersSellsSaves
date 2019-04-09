package com.neusoft.entity;

public class Customer {
	private Integer cusno;
	private String cusname;
	private String cusallname;
	private String head;
	private String headname;
	private String tel;
	private String fax;
	private String mobtel;
	private String salesman;
	private String cusaddress;
	private String deladdress;
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Customer(Integer cusno, String cusname, String cusallname,
			String head, String headname, String tel, String fax,
			String mobtel, String salesman, String cusaddress, String deladdress) {
		super();
		this.cusno = cusno;
		this.cusname = cusname;
		this.cusallname = cusallname;
		this.head = head;
		this.headname = headname;
		this.tel = tel;
		this.fax = fax;
		this.mobtel = mobtel;
		this.salesman = salesman;
		this.cusaddress = cusaddress;
		this.deladdress = deladdress;
	}
	public Integer getCusno() {
		return cusno;
	}
	public void setCusno(Integer cusno) {
		this.cusno = cusno;
	}
	public String getCusname() {
		return cusname;
	}
	public void setCusname(String cusname) {
		this.cusname = cusname;
	}
	public String getCusallname() {
		return cusallname;
	}
	public void setCusallname(String cusallname) {
		this.cusallname = cusallname;
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
	public String getSalesman() {
		return salesman;
	}
	public void setSalesman(String salesman) {
		this.salesman = salesman;
	}
	public String getCusaddress() {
		return cusaddress;
	}
	public void setCusaddress(String cusaddress) {
		this.cusaddress = cusaddress;
	}
	public String getDeladdress() {
		return deladdress;
	}
	public void setDeladdress(String deladdress) {
		this.deladdress = deladdress;
	}
	@Override
	public String toString() {
		return "Customer [cusno=" + cusno + ", cusname=" + cusname
				+ ", cusallname=" + cusallname + ", head=" + head
				+ ", headname=" + headname + ", tel=" + tel + ", fax=" + fax
				+ ", mobtel=" + mobtel + ", salesman=" + salesman
				+ ", cusaddress=" + cusaddress + ", deladdress=" + deladdress
				+ "]";
	}
	
}
