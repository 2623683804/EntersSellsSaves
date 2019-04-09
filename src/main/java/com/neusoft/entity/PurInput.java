package com.neusoft.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class PurInput {

	private Integer supno;
	private Integer purinid;
	private String supallname;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date cgdate;
	private Integer totalamount;
	private Integer comno;
	private Integer amount;
	private Integer unitprice;
	public PurInput() {
		super();
	}
	public PurInput(Integer supno, Integer purinid, String supallname,
			Date cgdate, Integer totalamount, Integer comno, Integer amount,
			Integer unitprice) {
		super();
		this.supno = supno;
		this.purinid = purinid;
		this.supallname = supallname;
		this.cgdate = cgdate;
		this.totalamount = totalamount;
		this.comno = comno;
		this.amount = amount;
		this.unitprice = unitprice;
	}
	public Integer getSupno() {
		return supno;
	}
	public void setSupno(Integer supno) {
		this.supno = supno;
	}
	public Integer getPurinid() {
		return purinid;
	}
	public void setPurinid(Integer purinid) {
		this.purinid = purinid;
	}
	public String getSupallname() {
		return supallname;
	}
	public void setSupallname(String supallname) {
		this.supallname = supallname;
	}
	
	public Date getCgdate() {
		return cgdate;
	}
	public void setCgdate(Date cgdate) {
		this.cgdate = cgdate;
	}
	public Integer getTotalamount() {
		return totalamount;
	}
	public void setTotalamount(Integer totalamount) {
		this.totalamount = totalamount;
	}
	public Integer getComno() {
		return comno;
	}
	public void setComno(Integer comno) {
		this.comno = comno;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Integer getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(Integer unitprice) {
		this.unitprice = unitprice;
	}
	@Override
	public String toString() {
		return "PurInput [supno=" + supno + ", purinid=" + purinid
				+ ", supallname=" + supallname + ", chdate=" + cgdate
				+ ", totalamount=" + totalamount + ", comno=" + comno
				+ ", amount=" + amount + ", unitprice=" + unitprice + "]";
	}
	
	
	
}
