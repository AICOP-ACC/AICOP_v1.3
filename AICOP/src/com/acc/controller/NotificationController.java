package com.acc.controller;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.json.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.acc.delegate.NotificationDelegate;
import com.acc.model.Incident_Details;

@Controller
public class NotificationController {
	final static Logger logger = Logger.getLogger(NotificationController.class);
	private NotificationDelegate notificationDelegate;

	public void setNotificationDelegate(NotificationDelegate notificationDelegate) {
		this.notificationDelegate = notificationDelegate ;
	}

	
	@RequestMapping(value = "/notification.do", method = RequestMethod.POST)
	public @ResponseBody  String checkButton(HttpServletRequest request, HttpServletResponse response ) throws JSONException {
		System.out.println("In checkButton");
		logger.debug("Into controller-->checkButton");
		
		ModelAndView mav = new ModelAndView();
		JSONArray jsonArray = new JSONArray();
		System.out.println(jsonArray);
		
		//List<Incident_Details> qrrsltset = notificationDelegate.getNotificationDataFromDB();
		List<Incident_Details> qrrsltset = null;
		String dataSource = notificationDelegate.getSourceInfo("exec_major_alert");
		//String  dataSource = "SPLUNK";
		if(dataSource.equals("SPLUNK")) {
		//List<Incident_Details> qrrsltset = notificationDelegate.getNotificationDataFromDB();
			qrrsltset = notificationDelegate.getNotificationDatafromSplunk() ;
		}
		//List<Incident_Details> qrrsltset = notificationDelegate.getNotificationDatafromSplunk() ;
		System.out.println("result query set:" + qrrsltset.size());
		
		String applist = new String() ;
		StringBuilder incidentid = new StringBuilder() ;
		StringBuilder incidentdsc = new StringBuilder() ;
		java.util.Map<String,String> graphdata = new java.util.HashMap<String,String>();
		
		java.util.Iterator<Incident_Details> itr = qrrsltset.iterator() ;
		while (itr.hasNext()){
			Incident_Details tmp = itr.next() ;
			
			/*if (graphdata.containsKey(tmp.getImpacted_app().trim()))
				graphdata.put(tmp.getImpacted_app().trim(), graphdata.get(tmp.getImpacted_app().trim()) + "," + String.valueOf(tmp.getIncidentDetailsId())) ;
			else
				graphdata.put(tmp.getImpacted_app().trim(),String.valueOf(tmp.getIncidentDetailsId()));*/
			
		     //int indx = tmp.getIncidentDesc().indexOf("-") ;
			applist =  String.valueOf(tmp.getIncidentDetailsId()) + " ~" + tmp.getIncidentDesc()+ "~" + tmp.getLastedUpdatedBy();
			//applist.append(",");
			
			jsonArray.put(applist);
			/*incidentid.append(String.valueOf(tmp.getIncidentDetailsId())) ;
			incidentid.append(",") ;
			incidentdsc.append(tmp.getLastedUpdatedBy());
			incidentdsc.append(",");*/
			
			System.out.println("output111:" + tmp.getLastedUpdatedBy());
			System.out.println("output112:" + tmp.getIncidentDetailsId());
			System.out.println("output113:" + tmp.getIncidentDesc());
			applist = "" ;
		}
		
	
		
		
		return jsonArray.toString();
	}
	

	@RequestMapping(value = "/getMajorTrend.do", method = RequestMethod.POST)
	public @ResponseBody  String getMajorIncidentTrend(HttpServletRequest request, HttpServletResponse response ) throws JSONException {
		System.out.println("In checkButton");
		logger.debug("Into controller-->checkButton");
		Map<String,String>  majorTrendMap = null;
		ModelAndView mav = new ModelAndView();
	
		JSONArray jsonArrayAppLst = new JSONArray();
	//	(java.util.HashMap<String,Object>);
		
	//	Map<String,String> router = mav.getModel().containsKey("model");
//String dataSource = notificationDelegate.getSourceInfo("exec_major_incident");
		String  dataSource = "SPLUNK";
		if(dataSource.equals("SPLUNK")) {
		//List<Incident_Details> qrrsltset = notificationDelegate.getNotificationDataFromDB();
			majorTrendMap = notificationDelegate.getMajorTrendSplunk() ;
		}
		System.out.println("result query set:" + majorTrendMap.size());
		//jsonArrayAppLst.put(majorTrendMap);
		List<String> labels = new ArrayList<String>();
		List<String> data = new ArrayList<String>();
		for (Map.Entry<String, String> entry : majorTrendMap.entrySet())
		{
		    System.out.println(entry.getKey() + "/" + entry.getValue());
		   labels.add(entry.getKey());
		   String[] dataStr = null;
		   String[] dataStr1 = null;
		  // if(!entry.getValue().contains("Application")) {
			   dataStr =  entry.getValue().replace("{", "").replace("}", "").replace("=","~").split(",");
			   
			   
			   for(int i = 0; i < dataStr.length; i++){
		             if(dataStr[i].contains("Category")){
		            	 dataStr1 = new String[dataStr.length - 1];
		                for(int index = 0; index < i; index++){
		                	dataStr1[index] = dataStr[index];
		                }
		                for(int j = i; j < dataStr.length - 1; j++){
		                	dataStr1[j] = dataStr[j+1];
		                }
		                break;
		             }
		         }
		   data.add(Arrays.toString(dataStr1));
		  // }
		    
		}
		
		jsonArrayAppLst.put(labels);
		jsonArrayAppLst.put(data);
		
			mav.addObject("result", "Authenticated Successfully");
			mav.addObject("resultSet",jsonArrayAppLst );
			//mav.setViewName("index");
		
		return jsonArrayAppLst.toString();
	}

	
	/*@RequestMapping(value = "/alert.do", method = RequestMethod.POST)
	public @ResponseBody  String getAlert(HttpServletRequest request, HttpServletResponse response ) throws JSONException {
		logger.debug("Into controller-->checkButton");
		
		ModelAndView mav = new ModelAndView();		
		List<String> qrrsltset = notificationDelegate.getAlertDataFromDB();
		System.out.println("result query set:" + qrrsltset.size());
		
		JSONArray jsonArray = new JSONArray(qrrsltset);
		System.out.println("inside alert:" + jsonArray);		
		
		if (qrrsltset.size() > 0) {
			mav.addObject("result", "Authenticated Successfully");
			mav.addObject("resultSet",jsonArray );
			//mav.setViewName("index");
		} else {
			mav.addObject("errorMsg", "Incorrect UserId/Password");
			mav.setViewName("index");
		}
		return jsonArray.toString();
	}
	
	@RequestMapping(value = "/bgraph.do", method = RequestMethod.POST)
	public @ResponseBody  String getGraphdata(HttpServletRequest request, HttpServletResponse response ) throws JSONException {
		logger.debug("Into controller-->checkButton");
		
		ModelAndView mav = new ModelAndView();		
		List<String> qrrsltset = notificationDelegate.getGraphdata();
		System.out.println("result query set:" + qrrsltset.size());
		
		JSONArray jsonArray = new JSONArray(qrrsltset);
		System.out.println("\n inside graph:" + jsonArray);		
		
		if (qrrsltset.size() > 0) {
			mav.addObject("result", "Authenticated Successfully");
			mav.addObject("resultSet",jsonArray );
			//mav.setViewName("index");
		} else {
			mav.addObject("errorMsg", "Incorrect UserId/Password");
			mav.setViewName("index");
		}
		return jsonArray.toString();
	}*/
}


