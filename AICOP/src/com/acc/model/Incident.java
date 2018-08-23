package com.acc.model;

import java.util.Date;
//import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 * The persistent class for the incidents database table.
 * 
 */
@Entity
@Table(name="incidents")
public class Incident {

	@Id
	@Column(name="incident_id")
	private int incidentId;

	private int id;

	@Column(name="incident_desc")
	private String incidentDesc;

	@Column(name="lasted_updated_by")
	private String lastedUpdatedBy;

	@Temporal(TemporalType.DATE)
	@Column(name="lasted_updated_dt")
	private Date lastedUpdatedDt;

	//bi-directional many-to-one association to IncidentDetail
	/*private List<Incident_Details> incidentDetails;*/

	public Incident() {
	}

	public int getIncidentId() {
		return this.incidentId;
	}

	public void setIncidentId(int incidentId) {
		this.incidentId = incidentId;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIncidentDesc() {
		return this.incidentDesc;
	}

	public void setIncidentDesc(String incidentDesc) {
		this.incidentDesc = incidentDesc;
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

/*	public List<Incident_Details> getIncidentDetails() {
		return this.incidentDetails;
	}

	public void setIncidentDetails(List<Incident_Details> incidentDetails) {
		this.incidentDetails = incidentDetails;
	}

	public Incident_Details addIncidentDetail(Incident_Details incidentDetail) {
		getIncidentDetails().add(incidentDetail);
		incidentDetail.setIncident(1);

		return incidentDetail;
	}

	public Incident_Details removeIncidentDetail(Incident_Details incidentDetail) {
		getIncidentDetails().remove(incidentDetail);
		incidentDetail.setIncident(null);

		return incidentDetail;
	}*/

}