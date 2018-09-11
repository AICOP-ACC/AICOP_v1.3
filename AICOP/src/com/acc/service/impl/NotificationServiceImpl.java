package com.acc.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.dao.NotificationDao;
import com.acc.model.Incident_Details;
import com.acc.service.NotificationService;

@Service(value="notificationService")
public class NotificationServiceImpl implements NotificationService{

	@Resource(name="notificationService")
	private NotificationService notificationService;
	
	@Autowired
	private NotificationDao notificationDao;
	
	
	public void setNotificationService(NotificationService notificationService) {
		this.notificationService = notificationService;
	}

	@Override
	public List<Incident_Details> getNotificationDataFromDB() {
		System.out.println("In service");	
		return notificationDao.getNotificationData() ;
	}

	@Override
	public List<Incident_Details> getAlertDataFromDB() {
		System.out.println("In Alert service");
		return notificationDao.getAlertDataFromDB() ;
	}

	@Override
	public List<Incident_Details> getGraphdata() {
		System.out.println("In Graph service");
		return notificationDao.getGraphdata() ;		
	}

	@Override
	public List<Incident_Details>  getNotificationDatafromSplunk() {
		return notificationDao.getNotificationDatafromSplunk();
		
	}

	@Override
	public String getRouterInfo(String fieldValue) {
		// TODO Auto-generated method stub
		return notificationDao.getRouterInfo(fieldValue);
	}

	@Override
	public Map<String,String>  getMajorTrendDataSplunk() {
		// TODO Auto-generated method stub
		return notificationDao.getMajorTrendSplunk();
	}

	@Override
	public String getApps() {
		return notificationDao.getApps();
	}
		// kvp code
	@Override
	public List<HashMap<String,String>>  getDetailBtnService(String inputDetail) {
		// TODO Auto-generated method stub
		return notificationDao.getDetailBtnDao(inputDetail);
	}
	
	@Override
	public List<HashMap<String,String>>  getAlertsBtnSrc(String name,String pattern) {
		// TODO Auto-generated method stub
		return notificationDao.getAlertsBtnDao(name, pattern);
	}
	
	@Override
	public Map<String,String>  getAppHealthDet() {
		// TODO Auto-generated method stub
		return notificationDao.getAppHealthDet();
	}
}
