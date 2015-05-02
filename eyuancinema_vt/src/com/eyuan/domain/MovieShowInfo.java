package com.eyuan.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * MovieShowInfo entity. @author MyEclipse Persistence Tools
 */

public class MovieShowInfo implements java.io.Serializable {

	// Fields

	private Long showId;
	private String showDate;
	private String showTime;
	private Double showPrice;
	private Integer ticketLeft;
	private MovieInfo movieInfo;
	private Set<ShowSeatRelation> showSeatRelations = new HashSet<ShowSeatRelation>();
	private Set<UserTicketInfo> userTicketInfos = new HashSet<UserTicketInfo>();
	private Set<SimpleTicketInfo> simpleTicketInfos = new HashSet<SimpleTicketInfo>();

	@Override
	public String toString() {
		return "放映日期：" + this.showDate + "\n放映时间：" + this.showTime + "\n价格："
				+ this.showPrice + "\n剩余票数：" + this.ticketLeft;
	}

	// Constructors

	/** default constructor */
	public MovieShowInfo() {
	}

	/** minimal constructor */
	public MovieShowInfo(String showDate, String showTime, Double showPrice,
			Integer ticketLeft) {
		this.showDate = showDate;
		this.showTime = showTime;
		this.showPrice = showPrice;
		this.ticketLeft = ticketLeft;
	}

	/** full constructor */
	public MovieShowInfo(String showDate, String showTime, Double showPrice,
			Integer ticketLeft, MovieInfo movieInfo, Set showSeatRelations,
			Set userTicketInfos, Set simpleTicketInfos) {
		this.showDate = showDate;
		this.showTime = showTime;
		this.showPrice = showPrice;
		this.ticketLeft = ticketLeft;
		this.movieInfo = movieInfo;
		this.showSeatRelations = showSeatRelations;
		this.userTicketInfos = userTicketInfos;
		this.simpleTicketInfos = simpleTicketInfos;
	}

	// Property accessors

	public Long getShowId() {
		return this.showId;
	}

	public void setShowId(Long showId) {
		this.showId = showId;
	}

	public String getShowDate() {
		return this.showDate;
	}

	public void setShowDate(String showDate) {
		this.showDate = showDate;
	}

	public String getShowTime() {
		return this.showTime;
	}

	public void setShowTime(String showTime) {
		this.showTime = showTime;
	}

	public Double getShowPrice() {
		return this.showPrice;
	}

	public void setShowPrice(Double showPrice) {
		this.showPrice = showPrice;
	}

	public Integer getTicketLeft() {
		return this.ticketLeft;
	}

	public void setTicketLeft(Integer ticketLeft) {
		this.ticketLeft = ticketLeft;
	}

	public MovieInfo getMovieInfo() {
		return this.movieInfo;
	}

	public void setMovieInfo(MovieInfo movieInfo) {
		this.movieInfo = movieInfo;
	}

	public Set<ShowSeatRelation> getShowSeatRelations() {
		return this.showSeatRelations;
	}

	public void setShowSeatRelations(Set<ShowSeatRelation> showSeatRelations) {
		this.showSeatRelations = showSeatRelations;
	}

	public Set<UserTicketInfo> getUserTicketInfos() {
		return this.userTicketInfos;
	}

	public void setUserTicketInfos(Set<UserTicketInfo> userTicketInfos) {
		this.userTicketInfos = userTicketInfos;
	}

	public Set<SimpleTicketInfo> getSimpleTicketInfos() {
		return this.simpleTicketInfos;
	}

	public void setSimpleTicketInfos(Set<SimpleTicketInfo> simpleTicketInfos) {
		this.simpleTicketInfos = simpleTicketInfos;
	}

}