package com.acc.common;

import java.util.List;
import java.util.Map;

import com.acc.model.Incident_Details;

public interface ConnectSplunkSource {

	List<Incident_Details> getSplunkNotificationData();
	
	Map<String, String> getSplunkMajorIncidentData();

}
