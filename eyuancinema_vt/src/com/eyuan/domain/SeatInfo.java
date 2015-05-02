package com.eyuan.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * SeatInfo entity. @author MyEclipse Persistence Tools
 */

public class SeatInfo implements java.io.Serializable {

	// Fields

	private Long seatId;
	private Integer seatNumber;
	private String seatLocation;

	// private Set simpleTicketInfos = new HashSet(0);
	// private Set userTicketInfos = new HashSet(0);
	// private Set showSeatRelations = new HashSet(0);

	public SeatInfo() {
	}

	/** minimal constructor */
	public SeatInfo(Integer seatNumber, String seatLocation) {
		this.seatNumber = seatNumber;
		this.seatLocation = seatLocation;
	}

	public SeatInfo(Long seatId, Integer seatNumber, String seatLocation) {
		super();
		this.seatId = seatId;
		this.seatNumber = seatNumber;
		this.seatLocation = seatLocation;
	}

	// Property accessors

	public Long getSeatId() {
		return this.seatId;
	}

	public void setSeatId(Long seatId) {
		this.seatId = seatId;
	}

	public Integer getSeatNumber() {
		return this.seatNumber;
	}

	public void setSeatNumber(Integer seatNumber) {
		this.seatNumber = seatNumber;
	}

	public String getSeatLocation() {
		return this.seatLocation;
	}

	public void setSeatLocation(String seatLocation) {
		this.seatLocation = seatLocation;
	}

}