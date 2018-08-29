package com.acc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="aicop_precheck_config")
public class AICOPPrecheckConfig
{
	private int id;
	private String code;
	private String desc;
	private int min;
	private int max;
	private String activeInd;
	private String lastUpdatedBy;
	private String lastUpdatedDate;
	private String icon;
	
	
	@Id
	@Column(name="id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name="code")
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	@Column(name="description")
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	@Column(name="min")
	public int getMin() {
		return min;
	}
	public void setMin(int min) {
		this.min = min;
	}
	@Column(name="max")
	public int getMax() {
		return max;
	}
	public void setMax(int max) {
		this.max = max;
	}
	@Column(name="active_ind")
	public String getActiveInd() {
		return activeInd;
	}
	public void setActiveInd(String activeInd) {
		this.activeInd = activeInd;
	}
	@Column(name="last_updated_by")
	public String getLastUpdatedBy() {
		return lastUpdatedBy;
	}
	public void setLastUpdatedBy(String lastUpdatedBy) {
		this.lastUpdatedBy = lastUpdatedBy;
	}
	@Column(name="last_updated_date")
	public String getLastUpdatedDate() {
		return lastUpdatedDate;
	}
	public void setLastUpdatedDate(String lastUpdatedDate) {
		this.lastUpdatedDate = lastUpdatedDate;
	}
	@Column(name="icon")
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	
	
	

}
