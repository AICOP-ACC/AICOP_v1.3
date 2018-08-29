package com.acc.service;

import java.util.List;
import java.util.Map;

import com.acc.model.Incident_Details;

public interface NotificationService {

	List<Incident_Details> getNotificationDataFromDB();
	List<Incident_Details> getAlertDataFromDB();
	List<Incident_Details> getGraphdata();
	List<Incident_Details>  getNotificationDatafromSplunk();
	String getRouterInfo(String fieldValue);
	Map<String, String> getMajorTrendDataSplunk();
	
}
