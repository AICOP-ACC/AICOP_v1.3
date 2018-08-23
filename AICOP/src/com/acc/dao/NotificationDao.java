package com.acc.dao;

import java.util.List;
import java.util.Map;

import com.acc.model.Incident_Details;

public interface NotificationDao {
	List<Incident_Details> getNotificationData();
	List<Incident_Details> getAlertDataFromDB();
	List<Incident_Details> getGraphdata();
	List<Incident_Details> getNotificationDatafromSplunk();
	String getRouterInfo(String viewField);
	Map<String, String> getMajorTrendSplunk();
}




