package com.neusoft.entity;

public class Page {

	private Integer currentpage;//当前页
	private Integer totalpage;//总页数
	private Integer totalrows;//总条数
	private Integer pagesize;//每页大小
	private Integer startrow;//开始页
	private Integer starttotal;//每页开始条数
	private Integer Jumppage;//跳转到的页
	
	
	public Integer getJumppage() {
		return Jumppage;
	}
	public void setJumppage(Integer jumppage) {
		Jumppage = jumppage;
	}
	public Integer getCurrentpage() {
		return currentpage;
	}
	public void setCurrentpage(Integer currentpage) {
		this.currentpage = currentpage;
	}
	public Integer getTotalpage() {
		return totalpage;
	}
	public void setTotalpage(Integer totalpage) {
		this.totalpage = totalpage;
	}
	public Integer getTotalrows() {
		return totalrows;
	}
	public void setTotalrows(Integer totalrows) {
		this.totalrows = totalrows;
	}
	public Integer getPagesize() {
		return pagesize;
	}
	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}
	public Integer getStartrow() {
		return startrow;
	}
	public void setStartrow(Integer startrow) {
		this.startrow = startrow;
	}
	public Integer getStarttotal() {
		return starttotal;
	}
	public void setStarttotal(Integer starttotal) {
		this.starttotal = starttotal;
	}
	
	public Page() {
		super();
	}
	public Page(Integer currentpage, Integer totalpage, Integer totalrows,
			Integer pagesize, Integer startrow, Integer starttotal,
			Integer jumppage) {
		super();
		this.currentpage = currentpage;
		this.totalpage = totalpage;
		this.totalrows = totalrows;
		this.pagesize = pagesize;
		this.startrow = startrow;
		this.starttotal = starttotal;
		Jumppage = jumppage;
	}
	@Override
	public String toString() {
		return "Page [currentpage=" + currentpage + ", totalpage=" + totalpage
				+ ", totalrows=" + totalrows + ", pagesize=" + pagesize
				+ ", startrow=" + startrow + ", starttotal=" + starttotal
				+ ", Jumppage=" + Jumppage + "]";
	}
	
	
	
	
	
}
