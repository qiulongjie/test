package com.eyuan.domain;

/**
 * UserTicketInfo entity. @author MyEclipse Persistence Tools
 */

public class UserTicketInfo implements java.io.Serializable {

	// Fields

	private String ticketId;
	private SeatInfo seatInfo;
	private MovieShowInfo movieShowInfo;
	private UserInfo userInfo;
	private Double ticketPrice;
	private Integer ticketMark;

	// Constructors

	/** default constructor */
	public UserTicketInfo() {
	}

	/** full constructor */
	public UserTicketInfo(String ticketId, SeatInfo seatInfo,
			MovieShowInfo movieShowInfo, UserInfo userInfo, Double ticketPrice,
			Integer ticketMark) {
		this.ticketId = ticketId;
		this.seatInfo = seatInfo;
		this.movieShowInfo = movieShowInfo;
		this.userInfo = userInfo;
		this.ticketPrice = ticketPrice;
		this.ticketMark = ticketMark;
	}

	// Property accessors

	public String getTicketId() {
		return this.ticketId;
	}

	public void setTicketId(String ticketId) {
		this.ticketId = ticketId;
	}

	public SeatInfo getSeatInfo() {
		return this.seatInfo;
	}

	public void setSeatInfo(SeatInfo seatInfo) {
		this.seatInfo = seatInfo;
	}

	public MovieShowInfo getMovieShowInfo() {
		return this.movieShowInfo;
	}

	public void setMovieShowInfo(MovieShowInfo movieShowInfo) {
		this.movieShowInfo = movieShowInfo;
	}

	public UserInfo getUserInfo() {
		return this.userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public Double getTicketPrice() {
		return this.ticketPrice;
	}

	public void setTicketPrice(Double ticketPrice) {
		this.ticketPrice = ticketPrice;
	}

	public Integer getTicketMark() {
		return this.ticketMark;
	}

	public void setTicketMark(Integer ticketMark) {
		this.ticketMark = ticketMark;
	}

}