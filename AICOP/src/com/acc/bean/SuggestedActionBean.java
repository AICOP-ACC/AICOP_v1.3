package com.acc.bean;

public class SuggestedActionBean {
	
	private String actionId;		
	private String actionDesc;	 	
	private String appOwner;	
	private String dependency; 		
	private String occurrences;		
	private String successPercentage;
	private String expectedDuration; 
	private String lastedUpdatedDt;
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
	public String getOccurrences() {
		return occurrences;
	}
	public void setOccurrences(String occurrences) {
		this.occurrences = occurrences;
	}
	public String getSuccessPercentage() {
		return successPercentage;
	}
	public void setSuccessPercentage(String successPercentage) {
		this.successPercentage = successPercentage;
	}
	public String getExpectedDuration() {
		return expectedDuration;
	}
	public void setExpectedDuration(String expectedDuration) {
		this.expectedDuration = expectedDuration;
	}
	public String getLastedUpdatedDt() {
		return lastedUpdatedDt;
	}
	public void setLastedUpdatedDt(String lastedUpdatedDt) {
		this.lastedUpdatedDt = lastedUpdatedDt;
	}
	
	
	

}
