package com.acc.delegate;

import java.util.List;
import java.util.Map;

import com.acc.model.Incident_Details;

public interface NotificationDelegate {
	
	List<Incident_Details> getNotificationDataFromDB() ;
	List<Incident_Details> getAlertDataFromDB() ;
	List<Incident_Details> getGraphdata() ;
	List<Incident_Details> getNotificationDatafromSplunk();
	Map<String, String> getMajorTrendSplunk();
	String getApps();
	String getSourceInfo(String viewField);
	
	// kvp code
	List<HashMap<String,String>> getDetailBtnList(String inputDetail);
	List<HashMap<String,String>> getAlertsBtnDt(String name, String pattern);
	Map<String, String> getAppHealthDet();
}
