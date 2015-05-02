package com.eyuan.domain;

/**
 * SimpleTicketInfo entity. @author MyEclipse Persistence Tools
 */

public class SimpleTicketInfo implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String ticketId;
	private SeatInfo seatInfo;
	private MovieShowInfo movieShowInfo;
	private String ticketPhone;
	private Double ticketPrice;
	private Integer ticketMark;

	private String buyTime;
	
	// Constructors

	public String getBuyTime() {
		return buyTime;
	}

	public void setBuyTime(String buyTime) {
		this.buyTime = buyTime;
	}

	/** default constructor */
	public SimpleTicketInfo() {
	}

	/** full constructor */
	public SimpleTicketInfo(String ticketId, SeatInfo seatInfo,
			MovieShowInfo movieShowInfo, String ticketPhone,
			Double ticketPrice, Integer ticketMark) {
		this.ticketId = ticketId;
		this.seatInfo = seatInfo;
		this.movieShowInfo = movieShowInfo;
		this.ticketPhone = ticketPhone;
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

	public String getTicketPhone() {
		return this.ticketPhone;
	}

	public void setTicketPhone(String ticketPhone) {
		this.ticketPhone = ticketPhone;
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