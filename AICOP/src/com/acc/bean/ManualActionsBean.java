package com.acc.bean;

public class ManualActionsBean {
	
	
	private String incidentId;
	private String actionId;		
	private String actionDesc;	 	
	private String appOwner;	
	private String dependency; 	
	private String expectedDuration; 
	private String status;
	private String startTime;
	private String endTime;
	private String actualDuration;
	private String outcome;
	
	
	
	public String getIncidentId() {
		return incidentId;
	}
	public void setIncidentId(String incidentId) {
		this.incidentId = incidentId;
	}
	public String getActionId() {
		return actionId;
	}
	public void setActionId(String actionId) {
		this.actionId = actionId;
	}
	public String getActionDesc() {
		return actionDesc;
	}
	public void setActionDesc(String actionDesc) {
		this.actionDesc = actionDesc;
	}
	public String getAppOwner() {
		return appOwner;
	}
	public void setAppOwner(String appOwner) {
		this.appOwner = appOwner;
	}
	public String getDependency() {
		return dependency;
	}
	public void setDependency(String dependency) {
		this.dependency = dependency;
	}
	public String getExpectedDuration() {
		return expectedDuration;
	}
	public void setExpectedDuration(String expectedDuration) {
		this.expectedDuration = expectedDuration;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getActualDuration() {
		return actualDuration;
	}
	public void setActualDuration(String actualDuration) {
		this.actualDuration = actualDuration;
	}
	public String getOutcome() {
		return outcome;
	}
	public void setOutcome(String outcome) {
		this.outcome = outcome;
	}
	
	
	
	

}
