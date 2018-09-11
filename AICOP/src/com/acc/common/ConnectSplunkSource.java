package com.acc.common;

import java.util.List;
import java.util.Map;

import com.acc.bean.RfcDetailsBean;
import com.acc.model.Incident_Details;

public interface ConnectSplunkSource {

	List<Incident_Details> getSplunkNotificationData();
	
	Map<String, String> getSplunkMajorIncidentData();
	
	Map<String, String> getSplunkAppHealth();
	
	public List<RfcDetailsBean> getRfcDetails(String applicationName);

}
