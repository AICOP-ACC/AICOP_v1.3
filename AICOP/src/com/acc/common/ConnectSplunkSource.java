package com.acc.common;

import java.util.List;
import java.util.Map;

import com.acc.bean.IncidentDetailsBean;
import com.acc.bean.RfcDetailsBean;
import com.acc.bean.TechnicalObjectsBean;
import com.acc.bean.TestResultsBean;
import com.acc.bean.ErrorLogBean;
import com.acc.model.Incident_Details;

public interface ConnectSplunkSource {

	List<Incident_Details> getSplunkNotificationData();
	
	Map<String, String> getSplunkMajorIncidentData();
	
	Map<String, String> getSplunkAppHealth();
	
	public List<RfcDetailsBean> getRfcDetails(String applicationName);
	
	public List<TechnicalObjectsBean> getTechnicalObjectsDetails(String applicationName);
	
	public List<TestResultsBean> getPitResultsDetails(String applicationName);
	
	public List<IncidentDetailsBean> getIncidentDetails(String applicationName);
	
	public List<ErrorLogBean> getErrorLogsDetails(String applicationName);

}
