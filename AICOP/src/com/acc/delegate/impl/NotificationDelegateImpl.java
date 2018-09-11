package com.acc.delegate.impl;

import com.acc.delegate.NotificationDelegate;
import com.acc.model.Incident_Details;
import com.acc.service.NotificationService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NotificationDelegateImpl implements NotificationDelegate {

	private NotificationService notificationService;

	public void setNotificationService(NotificationService notificationService) {
		this.notificationService = notificationService;
	}

	@Override
	public List<Incident_Details> getNotificationDataFromDB() {
         System.out.println("In Notification delegate");
		return notificationService.getNotificationDataFromDB() ;
	}

	@Override
	public List<Incident_Details> getAlertDataFromDB() {
		System.out.println("In Alert delegate");
		return notificationService.getAlertDataFromDB() ;
	}

	@Override
	public List<Incident_Details> getGraphdata() {
		System.out.println("In Graph delegate");
		return notificationService.getGraphdata() ;
	}

	@Override
	public List<Incident_Details> getNotificationDatafromSplunk() {
		 return notificationService.getNotificationDatafromSplunk() ;
	}

	@Override
	public String getSourceInfo(String viewField) {
		// TODO Auto-generated method stub
		System.out.println(viewField);
		return notificationService.getRouterInfo(viewField);
	}

	@Override
	public Map<String,String>  getMajorTrendSplunk() {
		 return notificationService.getMajorTrendDataSplunk() ;
	}

	@Override
	public String getApps() {
		return notificationService.getApps() ;

	}	
	
		@Override
	public List<HashMap<String,String>>  getDetailBtnList(String inputDetail) {
		 return notificationService.getDetailBtnService(inputDetail) ;
	}	
	
	@Override
	public List<HashMap<String,String>>  getAlertsBtnDt(String name, String pattern) {
		 return notificationService.getAlertsBtnSrc(name,pattern) ;
	}	
	@Override
	public Map<String,String>  getAppHealthDet() {
		 return notificationService.getAppHealthDet() ;
	}	
	
}
