package com.javaee.naukmaplaces.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PLACES")
public class Place {

	@Id
	@Column(name = "ID")
	@GeneratedValue
	private Integer id;

	@Column(name = "TYPE")
	private String type;

	@Column(name = "NAME")
	private String name;

	@Column(name = "BUILDING")
	private String building;

	@Column(name = "STAGE")
	private Integer stage;

	@Column(name = "AUD")
	private String aud;

	@Column(name = "INFO")
	private String info;
	
	@Column(name = "STATUS")
	@Enumerated(EnumType.STRING)
	private PlaceStatus status;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBuilding() {
		return building;
	}

	public void setBuilding(String building) {
		this.building = building;
	}

	public Integer getStage() {
		return stage;
	}

	public void setStage(Integer stage) {
		this.stage = stage;
	}

	public String getAud() {
		return aud;
	}

	public void setAud(String aud) {
		this.aud = aud;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public PlaceStatus getStatus() {
		return status;
	}

	public void setStatus(PlaceStatus status) {
		this.status = status;
	}
	
}
