package com.neusoft.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Commodity {
	private Integer comno;
	private String comname;
	private Integer inventory;
	private Integer amount;
	private Integer cgprice;
	private Integer salesprice;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date cgdate;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date salesdate;
	public Commodity(Integer comno, String comname, Integer inventory,
			Integer amount, Integer cgprice, Integer salesprice, Date cgdate,
			Date salesdate) {
		super();
		this.comno = comno;
		this.comname = comname;
		this.inventory = inventory;
		this.amount = amount;
		this.cgprice = cgprice;
		this.salesprice = salesprice;
		this.cgdate = cgdate;
		this.salesdate = salesdate;
	}
	public Commodity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getComno() {
		return comno;
	}
	public void setComno(Integer comno) {
		this.comno = comno;
	}
	public String getComname() {
		return comname;
	}
	public void setComname(String comname) {
		this.comname = comname;
	}
	public Integer getInventory() {
		return inventory;
	}
	public void setInventory(Integer inventory) {
		this.inventory = inventory;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Integer getCgprice() {
		return cgprice;
	}
	public void setCgprice(Integer cgprice) {
		this.cgprice = cgprice;
	}
	public Integer getSalesprice() {
		return salesprice;
	}
	public void setSalesprice(Integer salesprice) {
		this.salesprice = salesprice;
	}
	public Date getCgdate() {
		return cgdate;
	}
	public void setCgdate(Date cgdate) {
		this.cgdate = cgdate;
	}
	public Date getSalesdate() {
		return salesdate;
	}
	public void setSalesdate(Date salesdate) {
		this.salesdate = salesdate;
	}
	@Override
	public String toString() {
		return "Commidity [comno=" + comno + ", comname=" + comname
				+ ", inventory=" + inventory + ", amount=" + amount
				+ ", cgprice=" + cgprice + ", salesprice=" + salesprice
				+ ", cgdate=" + cgdate + ", salesdate=" + salesdate + "]";
	}
	
	
}
