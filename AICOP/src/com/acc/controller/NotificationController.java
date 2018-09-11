package com.acc.controller;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.json.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.acc.delegate.NotificationDelegate;
import com.acc.model.Incident_Details;

@Controller
public class NotificationController {
	
	Map<String,String> datamap=new HashMap<String,String>();
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
	
	
	
	@RequestMapping(value = "/healthCheck.do", method = RequestMethod.GET)
	public @ResponseBody  String healthCheck(HttpServletRequest request, HttpServletResponse response ) throws JSONException {
		System.out.println("In checkButton");
		logger.debug("Into controller-->checkButton");
		
		ModelAndView mav = new ModelAndView();
		JSONArray jsonArray = new JSONArray();
		System.out.println(jsonArray);
		Map<String,String> map=new HashMap<String,String>();
		String dataSource = notificationDelegate.getSourceInfo("exec_major_alert");
		if(dataSource.equals("SPLUNK")) {
			map = notificationDelegate.getAppHealthDet() ;
			
		}
		
		String qrrsltset = notificationDelegate.getApps();
		qrrsltset=qrrsltset.replace('[',' ').replace(']',' ');
		
		
		
		setMap(map);
		//add upto the above line for health check

		Set<String> qrrsStringArr=map.keySet();
		JSONArray returnquer=new JSONArray();
		for(String a:qrrsStringArr)
		{
			
			returnquer.put(a);
			
				
			
		}	//qrrsltset = notificationDelegate.getNotificationDatafromSplunk() ;
		//}
		//List<Incident_Details> qrrsltset = notificationDelegate.getNotificationDatafromSplunk() ;
	//	System.out.println("result query set:" + qrrsltset.size());
		
		String applist = new String() ;
		StringBuilder incidentid = new StringBuilder() ;
		StringBuilder incidentdsc = new StringBuilder() ;
		java.util.Map<String,String> graphdata = new java.util.HashMap<String,String>();
		
	
		
	
		
		
		return returnquer.toString();
	}
	
	//add for health check
	@RequestMapping(value = "/checkStatus.do", method = RequestMethod.GET)
	public @ResponseBody  String checkStatus(HttpServletRequest request, HttpServletResponse response ) throws JSONException {
		String c1="red";
		String c2="green";
	Map<String,String> statusmap=getMap();
	Set<String> apps=statusmap.keySet();
		System.out.println(request.getParameter("app")+" map "+getMap());
		//String apps[]=request.getParameter("app").split("@");
		System.out.println(" length "+apps.size());
		System.out.println("map "+statusmap+" apps "+apps);
		String status="";
		for(String app:apps){
			System.out.println(app);
			status=status+"@"+statusmap.get(app);
			System.out.println(app+" "+statusmap.get(app));	
		
		}
		System.out.println(status);
		return status.replaceFirst("@","");
	}
	
	
	@RequestMapping(value = "/getHelix.do", method = RequestMethod.GET)
	public @ResponseBody  String getHelixChart(HttpServletRequest request, HttpServletResponse response ) throws JSONException {
		String c1="red";
		String c2="green";
	JSONArray chartdata=new JSONArray();
	chartdata.put(10);
	chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	chartdata.put(17);
	chartdata.put(100);
	chartdata.put(10);
	chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	
	
	
	
	JSONArray threshold=new JSONArray();
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	;
	
	
		//return jsonArray.toString();
		return new JSONArray().put(chartdata).put(threshold).toString();
	}
	
	@RequestMapping(value = "/getOrders.do", method = RequestMethod.GET)
	public @ResponseBody  String getOrders(HttpServletRequest request, HttpServletResponse response ) throws JSONException {
		String c1="red";
		String c2="green";
	JSONArray chartdata=new JSONArray();
	chartdata.put(10);
	chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	chartdata.put(17);
	chartdata.put(100);
	chartdata.put(10);
	/*chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	chartdata.put(17);
	chartdata.put(100);
	chartdata.put(10);
	chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	chartdata.put(17);
	chartdata.put(100);
	chartdata.put(10);
	chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	chartdata.put(17);
	chartdata.put(100);
	chartdata.put(10);
	chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	chartdata.put(17);
	chartdata.put(100);
	chartdata.put(10);
	chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	chartdata.put(17);
	chartdata.put(100);*/
	
	
	
	JSONArray threshold=new JSONArray();
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	/*threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);*/
	
	
		//return jsonArray.toString();
		return new JSONArray().put(chartdata).put(threshold).toString();
	}
	
	
	@RequestMapping(value = "/getBilling.do", method = RequestMethod.GET)
	public @ResponseBody  String getBilling(HttpServletRequest request, HttpServletResponse response ) throws JSONException {
		String c1="red";
		String c2="green";
	JSONArray chartdata=new JSONArray();
	chartdata.put(10);
	chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	chartdata.put(17);
	chartdata.put(100);
	chartdata.put(10);
	/*chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	chartdata.put(17);
	chartdata.put(100);
	chartdata.put(10);
	chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	chartdata.put(17);
	chartdata.put(100);
	chartdata.put(10);
	chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	chartdata.put(17);
	chartdata.put(100);
	chartdata.put(10);
	chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	chartdata.put(17);
	chartdata.put(100);
	chartdata.put(10);
	chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	chartdata.put(17);
	chartdata.put(100);*/
	
	
	
	JSONArray threshold=new JSONArray();
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	/*threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);
	threshold.put(150);*/
	
	
		//return jsonArray.toString();
		return new JSONArray().put(chartdata).put(threshold).toString();
	}
	
	@RequestMapping(value = "/getTMT.do", method = RequestMethod.GET)
	public @ResponseBody  String getTMT(HttpServletRequest request, HttpServletResponse response ) throws JSONException {
		String c1="red";
		String c2="green";
	JSONArray chartdata=new JSONArray();
	chartdata.put(10);
	chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	chartdata.put(17);
	chartdata.put(100);
	chartdata.put(10);
	chartdata.put(20);
	chartdata.put(15);
	chartdata.put(25);
	
	
	
	
	JSONArray threshold=new JSONArray();
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	threshold.put(50);
	
	
	JSONArray chartdata1=new JSONArray();
	chartdata1.put(20);
	chartdata1.put(30);
	chartdata1.put(25);
	chartdata1.put(35);
	chartdata1.put(27);
	chartdata1.put(200);
	chartdata1.put(20);
	chartdata1.put(30);
	chartdata1.put(25);
	chartdata1.put(35);
	
	
	
	
		//return jsonArray.toString();
		return new JSONArray().put(chartdata).put(threshold).put(chartdata1).toString();
	}
	
	@RequestMapping(value = "/getHelixThreshhold.do", method = RequestMethod.GET)
	public @ResponseBody  String getHelixChartThreshhold(HttpServletRequest request, HttpServletResponse response ) throws JSONException {

	JSONArray jsonArray=new JSONArray();
	jsonArray.put(10);
	jsonArray.put(10);
	jsonArray.put(10);
	jsonArray.put(10);
	jsonArray.put(10);
	jsonArray.put(10);
	jsonArray.put(10);
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

	
	
	// kvp code 	
	@RequestMapping(value = "/getDetailBtn.do", method = RequestMethod.POST)
	public @ResponseBody  String getDetailBtnTrend(@RequestParam("name") String name, HttpServletRequest request, HttpServletResponse response ) throws JSONException {
		System.out.println("In detailbtn");
		logger.debug("Into controller-->checkButton");
		System.out.println("inputBtn .. " + name);
		
		
		List<HashMap<String,String>>  majorTrendMap = null;
		List<String> labels = new ArrayList<String>();
		List<String> data = new ArrayList<String>();
		
		ModelAndView mav = new ModelAndView();
	
		JSONArray jsonArrayAppLst = new JSONArray();
	
		String  dataSource = "SPLUNK";
		if(dataSource.equals("SPLUNK")) 
		{
			majorTrendMap = notificationDelegate.getDetailBtnList(name) ;
		}
		System.out.println("result query set:" + majorTrendMap.size());
		
		for(int i=0;i<majorTrendMap.size();i++)
		{
			HashMap<String,String> hmapBtn = majorTrendMap.get(i);
			for(Map.Entry<String, String> entry : hmapBtn.entrySet())
			{
				// System.out.println(entry.getKey() +" -- " + entry.getValue());
				if(entry.getKey().equals("trxns"))
					data.add(entry.getValue());
				else if(entry.getKey().equals("status"))
					labels.add(entry.getValue());
			}
		}
		
		System.out.println(data.size() + " - " + labels.size());
		
	    jsonArrayAppLst.put(labels);
		jsonArrayAppLst.put(data);
		
			mav.addObject("result", "Authenticated Successfully");
			mav.addObject("resultSet",jsonArrayAppLst );
		
		return jsonArrayAppLst.toString();
	}
	
	@RequestMapping(value = "/getAlertsBtn.do", method = RequestMethod.POST)
	public @ResponseBody  String getAlerts(@RequestParam("name") String bflowname,@RequestParam("ptrn") String bflowptrn, HttpServletRequest request, HttpServletResponse response ) throws JSONException {
		System.out.println("In detailbtn");
		logger.debug("Into controller-->checkButton");
		
		System.out.println("bflowname .. " + bflowname);
		System.out.println("bflowptrn .. " + bflowptrn);
		
		
		List<HashMap<String,String>>  majorTrendMap = null;
		List<String> labels = new ArrayList<String>();
		List<String> data = new ArrayList<String>();
		
		ModelAndView mav = new ModelAndView();
	
		JSONArray jsonArrayAppLst = new JSONArray();
	
		String  dataSource = "SPLUNK";
		if(dataSource.equals("SPLUNK")) 
		{
			majorTrendMap = notificationDelegate.getAlertsBtnDt(bflowname,bflowptrn);
		}
		System.out.println("result query set:" + majorTrendMap.size());
		
		for(int i=0;i<majorTrendMap.size();i++)
		{
			HashMap<String,String> hmapBtn = majorTrendMap.get(i);
			for(Map.Entry<String, String> entry : hmapBtn.entrySet())
			{
				// System.out.println(entry.getKey() +" -- " + entry.getValue());
				if(entry.getKey().equals("trxns"))
					data.add(entry.getValue());
				else if(entry.getKey().equals("status"))
					labels.add(entry.getValue());
			}
		}
		
		System.out.println(data.size() + " - " + labels.size());
		
	    jsonArrayAppLst.put(labels);
		jsonArrayAppLst.put(data);
		
			mav.addObject("result", "Authenticated Successfully");
			mav.addObject("resultSet",jsonArrayAppLst );
		
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
	//add for health check
	public void setMap(Map<String,String> m)
	{
		datamap=m;
	}
	//add for health check
	public Map<String,String> getMap()
	{
		return datamap;
	}
}

