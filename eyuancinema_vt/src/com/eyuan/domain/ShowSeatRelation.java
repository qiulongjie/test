package com.eyuan.domain;

/**
 * ShowSeatRelation entity. @author MyEclipse Persistence Tools
 */

public class ShowSeatRelation implements java.io.Serializable {

	// Fields

	private Long showSeatId;

	private SeatInfo seatInfo;
	private MovieShowInfo movieShowInfo;
	private Integer seatStatus;

	// Constructors

	/** default constructor */
	public ShowSeatRelation() {
	}

	public ShowSeatRelation(Integer seatStatus) {
		this.seatStatus = seatStatus;
	}

	/** full constructor */
	public ShowSeatRelation(SeatInfo seatInfo, MovieShowInfo movieShowInfo,
			Integer seatStatus) {
		this.seatInfo = seatInfo;
		this.movieShowInfo = movieShowInfo;
		this.seatStatus = seatStatus;
	}

	// Property accessors

	public Long getShowSeatId() {
		return this.showSeatId;
	}

	public void setShowSeatId(Long showSeatId) {
		this.showSeatId = showSeatId;
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

	public Integer getSeatStatus() {
		return this.seatStatus;
	}

	public void setSeatStatus(Integer seatStatus) {
		this.seatStatus = seatStatus;
	}

}