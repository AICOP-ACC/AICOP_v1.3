package com.acc.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 * The persistent class for the incident_details database table.
 * 
 */
@Entity
@Table(name="incident_details")
public class Incident_Details  {

	@Column(name="current_owner")
	private String currentOwner;

	@Column(name="current_status")
	private String currentStatus;

	private String impacted_app;
	
	private String progress_status ;
	
	@Column(name="incident_count")
	private int incidentCount;

	@Column(name="incident_desc")
	private String incidentDesc;

	@Id
	@Column(name="incident_details_id")
	private int incidentDetailsId;

	@Column(name="incident_type")
	private String incidentType;

	@Column(name="lasted_updated_by")
	private String lastedUpdatedBy;

	@Temporal(TemporalType.DATE)
	@Column(name="lasted_updated_dt")
	private Date lastedUpdatedDt;

	@Column(name="raised_by")
	private String raisedBy;

	//bi-directional many-to-one association to Incident
	@Column(name="incident_id")
	private Integer incident;

	public Incident_Details() {
	}

	public String getCurrentOwner() {
		return this.currentOwner;
	}

	public void setCurrentOwner(String currentOwner) {
		this.currentOwner = currentOwner;
	}

	public String getCurrentStatus() {
		return this.currentStatus;
	}

	public void setCurrentStatus(String currentStatus) {
		this.currentStatus = currentStatus;
	}

	public String getprogress_status() {
		return this.impacted_app;
	}

	public void setprogress_status(String progressstatus) {
		this.progress_status = progressstatus;
	}
	
	public String getImpacted_app() {
		return this.impacted_app;
	}

	public void setImpacted_app(String impacted_app) {
		this.impacted_app = impacted_app;
	}
	
	public int getIncidentCount() {
		return this.incidentCount;
	}
	
	public void setIncidentCount(int incidentCount) {
		this.incidentCount = incidentCount;
	}
	
	public String getIncidentDesc() {
		return this.incidentDesc;
	}

	public void setIncidentDesc(String incidentDesc) {
		this.incidentDesc = incidentDesc;
	}

	public int getIncidentDetailsId() {
		return this.incidentDetailsId;
	}

	public void setIncidentDetailsId(int incidentDetailsId) {
		this.incidentDetailsId = incidentDetailsId;
	}

	public String getIncidentType() {
		return this.incidentType;
	}

	public void setIncidentType(String incidentType) {
		this.incidentType = incidentType;
	}

	public String getLastedUpdatedBy() {
		return this.lastedUpdatedBy;
	}

	public void setLastedUpdatedBy(String lastedUpdatedBy) {
		this.lastedUpdatedBy = lastedUpdatedBy;
	}

	public Date getLastedUpdatedDt() {
		return this.lastedUpdatedDt;
	}

	public void setLastedUpdatedDt(Date lastedUpdatedDt) {
		this.lastedUpdatedDt = lastedUpdatedDt;
	}

	public String getRaisedBy() {
		return this.raisedBy;
	}

	public void setRaisedBy(String raisedBy) {
		this.raisedBy = raisedBy;
	}

	public Integer getIncident() {
		return this.incident;
	}

	public void setIncident(Integer incident) {
		this.incident = incident;
	}
}