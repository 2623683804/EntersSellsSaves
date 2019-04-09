package com.neusoft.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class SellReturn {

	private Integer cusno;
	private String cusname;
	private Integer sellreid;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date xthdate;
	private Integer totalamount;
	private Integer comno;
	private Integer amount;
	private Integer unitprice;
	public SellReturn() {
		super();
	}
	public SellReturn(Integer cusno, String cusname, Integer sellreid,
			Date xthdate, Integer totalamount, Integer comno, Integer amount,
			Integer unitprice) {
		super();
		this.cusno = cusno;
		this.cusname = cusname;
		this.sellreid = sellreid;
		this.xthdate = xthdate;
		this.totalamount = totalamount;
		this.comno = comno;
		this.amount = amount;
		this.unitprice = unitprice;
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
	public Integer getSellreid() {
		return sellreid;
	}
	public void setSellreid(Integer sellreid) {
		this.sellreid = sellreid;
	}
	public Date getXthdate() {
		return xthdate;
	}
	public void setXthdate(Date xthdate) {
		this.xthdate = xthdate;
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
		return "SellReturn [cusno=" + cusno + ", cusname=" + cusname
				+ ", sellreid=" + sellreid + ", xthdate=" + xthdate
				+ ", totalamount=" + totalamount + ", comno=" + comno
				+ ", amount=" + amount + ", unitprice=" + unitprice + "]";
	}
	
	
}
