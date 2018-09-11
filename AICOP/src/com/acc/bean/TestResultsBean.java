package com.acc.bean;

public class TestResultsBean {
	
	private String testCaseId;
	private String testCase;
	private String priority;
	private String dependentTestCaseId;
	private String result;
	
	public String getTestCaseId() {
		return testCaseId;
	}
	public void setTestCaseId(String testCaseId) {
		this.testCaseId = testCaseId;
	}
	public String getTestCase() {
		return testCase;
	}
	public void setTestCase(String testCase) {
		this.testCase = testCase;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public String getDependentTestCaseId() {
		return dependentTestCaseId;
	}
	public void setDependentTestCaseId(String dependentTestCaseId) {
		this.dependentTestCaseId = dependentTestCaseId;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	

}
