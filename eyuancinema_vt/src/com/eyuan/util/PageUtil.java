package com.eyuan.util;

import java.util.List;

public class PageUtil {
	private List list;//要返回某页记录列表

	private int allRow;//总记录数
	private int totalPage;//总页数
	private int currentPage;//当前页
	private int pageSize;//每页记录数

	private boolean isFirstPage;//是否为第一页
	private boolean isLastPage;//是否为最后一页
	private boolean hasPreviousPage;//是否有前一页
	private boolean hasNextPage;//是否有下一页
	
	public int getAllRow() {
		return allRow;
	}
	public void setAllRow(int allRow) {
		this.allRow = allRow;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	/**
	 * Description : 初始化分页信息
	 * @author 
	 */
	public void init(){
		this.isFirstPage = isFirstPage();
		this.isLastPage = isLastPage();
		this.hasPreviousPage = isHasPreviousPage();
		this.hasNextPage = isHasNextPage();
	}
	
	/**以下判断页信息,只需getter思路方法(is思路方法)即可
	 * @author 
	 * @return
	 */
	public boolean isFirstPage(){
		return currentPage==1;// 如是当前页是第1页
	}
	public boolean isLastPage(){
		return currentPage == totalPage;//如果当前页是最后页
	}
	public boolean isHasPreviousPage(){
		return currentPage != 1;//只要当前页不是第1页
	}
	public boolean isHasNextPage(){
		return currentPage != totalPage;//只要当前页不是最后1页
	}

	/**
	 * Description : 计算总页数,静态思路方法,供外部直接通过类名
	 * @author 
	 * @param pageSize每页记录数
	 * @param allRow总页数
	 * @return
	 */
	public static int countTotalPage(final int pageSize, final int allRow){
		int totalPage = allRow % pageSize==0 ? allRow/pageSize : allRow/pageSize+1;
		return totalPage;
	}

	/**
	 * Description : 计算当前页开始记录
	 * @author 
	 * @param pageSize 每页记录数
	 * @param currentPage 当前第几页
	 * @return 当前页开始记录号
	 */
	public static int countOff(final int pageSize,final int currentPage){
		final int offSet = pageSize*(currentPage-1);
		return offSet;
	}

	/**
	 * Description : 计算当前页,若为0或者请求URL中没有"?page=",则用1代替
	 * @author 
	 * @param page 传入参数(可能为空,即0,则返回1)
	 * @return
	 */
	public static int countCurrentPage(int page){
		final int curPage = (page==0?1:page);
		return curPage;
	}
}
