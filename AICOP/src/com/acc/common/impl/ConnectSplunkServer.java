package com.acc.common.impl;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Configuration;
import com.acc.splunkQueries.SplunkQueries;
import com.acc.model.Incident_Details;
import com.acc.bean.RfcDetailsBean;
import com.acc.common.ConnectSplunkSource;
import com.acc.controller.DetailedController;
import com.splunk.Event;
import com.splunk.HttpService;
import com.splunk.Job;
import com.splunk.JobArgs;
import com.splunk.JobExportArgs;
import com.splunk.MultiResultsReaderXml;
import com.splunk.ResultsReaderXml;
import com.splunk.SSLSecurityProtocol;
import com.splunk.SearchResults;
import com.splunk.Service;
import com.splunk.ServiceArgs;
@Configuration
public class ConnectSplunkServer implements ConnectSplunkSource {

	final static Logger logger = Logger.getLogger(ConnectSplunkServer.class);
	
	private String username ;
	private String password ;
	private String host ;
	private int port;
	
	ServiceArgs serviceArgs = new ServiceArgs();
	
	public ConnectSplunkServer()
	{
		buildSplunkObject();
	}
	
	public void setusername(String username){
		this.username = username ;
	}
	
	public void setpassword(String password){
		this.password = password ;
	}
	public void sethost(String host){
		this.host = host ;
	}
	
	public void setport(int port){
		this.port = port ;
	}
	
	public String getusername(){
		return this.username ;
	}
	public String getpassword(){
		return this.password ;
	}
	public String gethost(){
		return this.host ;
	}
	public int getport(){
		return this.port ;
	}
	
	public void buildSplunkObject(){
		/*serviceArgs.setUsername(this.getusername());
		serviceArgs.setPassword(this.getpassword());
		serviceArgs.setHost(this.gethost());
		serviceArgs.setPort(this.getport());*/
		this.serviceArgs.setUsername("admin");
		/*this.serviceArgs.setPassword("");*/
		//this.serviceArgs.setPassword("");
		//this.serviceArgs.setHost("10.185.0.153");
		this.serviceArgs.setHost("localhost");
		this.serviceArgs.setPort(8089);
      }
	
	@Override
	public List<Incident_Details> getSplunkNotificationData(){
		String output = " ";
		List<Incident_Details> incide = new ArrayList<Incident_Details>() ;
		try{
		HttpService.setSslSecurityProtocol(SSLSecurityProtocol.TLSv1_2);
		System.out.println(HttpService.getSslSecurityProtocol().toString());
		
		Service service = new Service(this.serviceArgs);
		service.login();
		        
		 JobArgs jobargs = new JobArgs();
	        jobargs.setExecutionMode(JobArgs.ExecutionMode.NORMAL);
	        String mySearch = "|inputlookup cmdb_alerts_nlt.csv| where like(token,\"%INCIDENT%\")| eval status=coalesce(instancestatus,status)|table alerts,token,alertid,bflow,status| dedup alerts,token,status| table alerts,status,alertid,bflow" ;
	        Job job = service.getJobs().create(mySearch, jobargs);
        
	        // Wait for the search to finish
	        while (!job.isDone()) {
	            try {
	                Thread.sleep(500);
	            } catch (InterruptedException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            }
	        }

	        // Get the search results and use the built-in XML parser to display them
	        InputStream resultsNormalSearch =  job.getResults();

	        ResultsReaderXml resultsReaderNormalSearch;
          
	        try {
	            resultsReaderNormalSearch = new ResultsReaderXml(resultsNormalSearch);
	            HashMap<String, String> event;
	            while ((event = resultsReaderNormalSearch.getNextEvent()) != null) {
	            	Incident_Details _tmp =  new Incident_Details() ;
	                System.out.println("\n*@@@@@*************EVENT****************\n");
	                for (String key: event.keySet())
	                {
	                	if (key.toString().equals("alertid"))
	                		_tmp.setIncidentDetailsId(Integer.parseInt(event.get(key)));
	                	
	                	if (key.toString().equals("status"))
	                		_tmp.setLastedUpdatedBy(event.get(key));
	                	
	                	if (key.toString().equals("alerts"))
	                	{
	                		String[] tmp ;
	                		tmp = event.get(key).toString().split("~");
	                		_tmp.setIncidentDesc(tmp[1] + "~" + tmp[2]);
	                	}
	                	
	                	System.out.println("   " + key + ":  " + event.get(key));
	                }
	                incide.add(_tmp) ;
	                    
	            }
	            
	            System.out.println("final:" + incide.size());
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        InputStream results = job.getResults();
	        String line = null;
	        BufferedReader br = new BufferedReader(new InputStreamReader(results,"UTF-8"));
	       while((line = br.readLine()) != null) {
	        	System.out.println(line);
	        }
	       service.logout();
	       
		//String mySearch = "search index=\"aicop_alerts\" | table _raw";
      
		//InputStream _tmp = service.export(mySearch, exportArgs) ;
		/*MultiResultsReaderXml resultsReader = new MultiResultsReaderXml(resultsNormalSearch);
        
        long counter = 0;
        System.out.println(resultsReader.toString());
        for(SearchResults searchResults : resultsReader) {
            for(Event event : searchResults) {
               System.out.println("***" + ++counter + " ****");
                for(String key : event.keySet()) {
                	output = key + ";" + event.get(key) ;
                     System.out.println("\t" + key + ":" + event.get(key));
                }
            }
        }*/
		}
		catch(Exception exceptions)
		{
			exceptions.printStackTrace();
		}
		return incide;
	}
	
	public void close()
	{
		
	}

	@Override
	public  Map<String,String> getSplunkMajorIncidentData() {
		
		 ResultsReaderXml resultsReaderNormalSearch = null;
		 Service service = null;
		 JobArgs jobargs = null;
		 String mySearch = null;
		 Job job = null;
		 InputStream resultsNormalSearch = null;
		 Map<String,String> dataMap = null;
		 HashMap<String, String> event;
		try{
		HttpService.setSslSecurityProtocol(SSLSecurityProtocol.TLSv1_2);
		
		 service = new Service(this.serviceArgs);
		 service.login();
		 dataMap = new HashMap<String,String>();
		  jobargs = new JobArgs();
	        jobargs.setExecutionMode(JobArgs.ExecutionMode.NORMAL);
	       //  mySearch = "|inputlookup cmdb_IncidentsMetrics.csv| where variationPercentage >20 | chart sum(todayCount) as count by application,category| rename application as Application| sort - count | fillnull value=0" ;
	        mySearch = "|inputlookup cmdb_IncidentsMetrics.csv| where variationPercentage >20 | chart sum(todayCount) as count by application,category| "
	         		+ " rename application as Application| sort - count | fillnull value=0|untable Application field value | xyseries field Application value | rename field as \"Category\"";
	         job = service.getJobs().create(mySearch, jobargs);
	        while (!job.isDone()) {
	            try {
	                Thread.sleep(500);
	            } catch (InterruptedException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            }
	        }
	        resultsNormalSearch =  job.getResults();
	            resultsReaderNormalSearch = new ResultsReaderXml(resultsNormalSearch);
	          //  List<String> systemVal = null;
	            while ((event = resultsReaderNormalSearch.getNextEvent()) != null) {
	            	for (String key: event.keySet())
	                {
	            		//System.out.println( event.toString() + event.get(key));
	            			//dataMap.put(event.toString(), event.toString());
	            			String[] data = event.toString().split(",");
	            			int inc = 0;
	            			String mapKey = null;
	            			while(inc<data.length) {
	            				if(data[inc].contains("Category")) {
	            					mapKey = data[inc];
	            					break;
	            				}
	            				inc++;
	            			}
	            			
	            			dataMap.put(mapKey, event.toString());
	            		
	                }
	            }
	            
	            for (Map.Entry<String, String> entry : dataMap.entrySet())
	    		{
	            	System.out.println(entry.getKey()+" ::: "+entry.getValue() );
	            //	systemVal = new ArrayList<String>();
            		
	    		}
	            System.out.println();
		}
		catch(Exception exceptions)
		{
			exceptions.printStackTrace();
		} finally {
			service.logout();
		}
		return dataMap;
	}
	
	
	// kvp code for splunkdetailview
	public List<HashMap<String,String>> getSplunkDetailButtonsList(String inputDetail) {
		
		 ResultsReaderXml resultsReaderNormalSearch = null;
		 Service service = null;
		 JobArgs jobargs = null;
		 String mySearch = null;
		 Job job = null;
		 InputStream resultsNormalSearch = null;
		 List<HashMap<String,String>> listmap = null;
		 // Map<String,String> dataMap = null;
		 HashMap<String, String> event;
		try{
		HttpService.setSslSecurityProtocol(SSLSecurityProtocol.TLSv1_2);
		
		service = Service.connect(this.serviceArgs);
		 // service = new Service(this.serviceArgs);
		 // service.login();
		// dataMap = new HashMap<String,String>();
		listmap = new ArrayList<HashMap<String,String>>();
		
		  jobargs = new JobArgs();
	        jobargs.setExecutionMode(JobArgs.ExecutionMode.NORMAL);
	       //  mySearch = "|inputlookup cmdb_IncidentsMetrics.csv| where variationPercentage >20 | chart sum(todayCount) as count by application,category| rename application as Application| sort - count | fillnull value=0" ;
	        mySearch = "|inputlookup cmdb_BflowTrxns.csv| search bflow="+inputDetail+" | table trxns,status,visibility,category";
	         job = service.getJobs().create(mySearch, jobargs);
	        while (!job.isDone()) {
	            try {
	                Thread.sleep(500);
	            } catch (InterruptedException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            }
	        }
	        resultsNormalSearch =  job.getResults();
	            resultsReaderNormalSearch = new ResultsReaderXml(resultsNormalSearch);
	          //  List<String> systemVal = null;
	            while ((event = resultsReaderNormalSearch.getNextEvent()) != null) {
	            	System.out.println(event.size());
	            	
	            	System.out.println("event.keySet() -- " + event.keySet());
	            	listmap.add(event);
	            	
	            }
	            
		}
		catch(Exception exceptions)
		{
			exceptions.printStackTrace();
		} finally {
			service.logout();
		}
		return listmap;
	}
	// end kvp code for splunkdetailedview
	
	
	public List<HashMap<String,String>> getAlertsDetailList(String name, String pattern) {
		
		 ResultsReaderXml resultsReaderNormalSearch = null;
		 Service service = null;
		 JobArgs jobargs = null;
		 String mySearch = null;
		 Job job = null;
		 InputStream resultsNormalSearch = null;
		 List<HashMap<String,String>> listalerts = null;
		 // Map<String,String> dataMap = null;
		 HashMap<String, String> event;
		try{
		HttpService.setSslSecurityProtocol(SSLSecurityProtocol.TLSv1_2);
		
		service = Service.connect(this.serviceArgs);
		 // service = new Service(this.serviceArgs);
		 // service.login();
		// dataMap = new HashMap<String,String>();
		listalerts = new ArrayList<HashMap<String,String>>();
		
		  jobargs = new JobArgs();
	        jobargs.setExecutionMode(JobArgs.ExecutionMode.NORMAL);
	       //  mySearch = "|inputlookup cmdb_IncidentsMetrics.csv| where variationPercentage >20 | chart sum(todayCount) as count by application,category| rename application as Application| sort - count | fillnull value=0" ;
	        // mySearch = "|inputlookup cmdb_alerts.csv| where bflow="+name+" AND like(trxns,'%~"+pattern+"~%') and status!=closed | append [| inputlookup cmdb_alerts.csv| head 1| eval alerts=No Alerts to Display,token=dummy,tokenvalue=dummy,unsettokens=dummy,status=dummy| table alerts,token,tokenvalue,unsettokens,status] | table alerts,token,tokenvalue,unsettokens,code,status,bflowtitle,bflowtoken,arrowdirection| eval alerts=alerts;token;tokenvalue;coalesce(code,xxx);unsettokens;status;coalesce(bflowtitle,xxx);coalesce(bflowtoken,xxx);coalesce(arrowdirection,xxx) |table alerts| mvcombine delim=| alerts| nomv alerts";
	        mySearch = "| inputlookup cmdb_alerts.csv| where bflow="+name+" AND like(trxns,'%~"+pattern+"~%') and status!="+"closed"+" | append [| inputlookup cmdb_alerts.csv| head 1| eval alerts="+"No Alerts to Display"+",token="+"dummy"+",tokenvalue="+"dummy"+",unsettokens="+"dummy"+",status="+"dummy"+"| table alerts,token,tokenvalue,unsettokens,status] | table alerts,token,tokenvalue,unsettokens,code,status,bflowtitle,bflowtoken,arrowdirection| eval alerts=alerts+"+";"+"+token+"+";"+"+tokenvalue+"+";"+"+coalesce(code,"+"PN-CRM_MTS"+")+"+";"+"+unsettokens+"+";"+"+status+"+";"+"+coalesce(bflowtitle,"+"PN Sent from OPOM/BCC/WSG is Low"+")+"+";"+"+coalesce(bflowtoken,"+"PN Sent from OPOM to MTS"+")+"+";"+"+coalesce(arrowdirection,"+">>"+") |table alerts| mvcombine delim="+"|"+" alerts| nomv alerts";
	         job = service.getJobs().create(mySearch, jobargs);
	        while (!job.isDone()) {
	            try {
	                Thread.sleep(500);
	            } catch (InterruptedException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            }
	        }
	        resultsNormalSearch =  job.getResults();
	            resultsReaderNormalSearch = new ResultsReaderXml(resultsNormalSearch);
	          //  List<String> systemVal = null;
	            while ((event = resultsReaderNormalSearch.getNextEvent()) != null) {
	            	System.out.println(event.size());
	            	
	            	System.out.println("event.keySet() -- " + event.keySet());
	            	listalerts.add(event);
	            	
	            }
	            
		}
		catch(Exception exceptions)
		{
			exceptions.printStackTrace();
		} finally {
			service.logout();
		}
		return listalerts;
	}
	
	
		@Override
		public  Map<String,String> getSplunkAppHealth() {
		
		 ResultsReaderXml resultsReaderNormalSearch = null;
		 Service service = null;
		 JobArgs jobargs = null;
		 String mySearch = null;
		 Job job = null;
		 InputStream resultsNormalSearch = null;
		 Map<String,String> dataMap = null;
		 HashMap<String, String> event;
		try{
		HttpService.setSslSecurityProtocol(SSLSecurityProtocol.TLSv1_2);
		
		 service = new Service(this.serviceArgs);
		 service.login();
		 dataMap = new HashMap<String,String>();
		  jobargs = new JobArgs();
	        jobargs.setExecutionMode(JobArgs.ExecutionMode.NORMAL);
	       //  mySearch = "|inputlookup cmdb_IncidentsMetrics.csv| where variationPercentage >20 | chart sum(todayCount) as count by application,category| rename application as Application| sort - count | fillnull value=0" ;
	        mySearch = SplunkQueries.HEALTH_CHECK_QUERY;
	         job = service.getJobs().create(mySearch, jobargs);
	        while (!job.isDone()) {
	            try {
	                Thread.sleep(500);
	            } catch (InterruptedException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            }
	        }
	        resultsNormalSearch =  job.getResults();
	            resultsReaderNormalSearch = new ResultsReaderXml(resultsNormalSearch);
	          //  List<String> systemVal = null;
	            while ((event = resultsReaderNormalSearch.getNextEvent()) != null) {
	            	for (String key: event.keySet())
	                {
	            		System.out.println( event.get(key) + event.get(key));
	            			//dataMap.put(event.toString(), event.toString());
	            			String[] data = event.toString().split(",");
	            			String[] appKey = data[0].split("=");
	            			String[] appKeyVal = data[1].split("=");
	            			dataMap.put(appKey[1], appKeyVal[1].replace("}", ""));
	            			
	            		
	                }
	            }
	            
	            for (Map.Entry<String, String> entry : dataMap.entrySet())
	    		{
	            	System.out.println(entry.getKey()+" ::: "+entry.getValue() );
	            //	systemVal = new ArrayList<String>();
            		
	    		}
	            System.out.println();
		}
		catch(Exception exceptions)
		{
			exceptions.printStackTrace();
		} finally {
			service.logout();
		}
		return dataMap;
	}
	
	@Override
	public List<RfcDetailsBean> getRfcDetails(String applicationName){
		logger.debug("In ConnectSplunkServer");
		 ResultsReaderXml resultsReaderNormalSearch = null;
		 Service service = null;
		 JobArgs jobargs = null;
		 String rfcSearch = null;
		 Job job = null;
		 InputStream resultsNormalSearch = null;
		 Map<String,String> dataMap = null;
		 HashMap<String, String> event;
		 List<RfcDetailsBean> rfcDetailsBeanList = new ArrayList<RfcDetailsBean>();
		try {
			HttpService.setSslSecurityProtocol(SSLSecurityProtocol.TLSv1_2);
			
			 service = new Service(this.serviceArgs);
			 service.login();
			 dataMap = new HashMap<String,String>();
			 jobargs = new JobArgs();
		     jobargs.setExecutionMode(JobArgs.ExecutionMode.NORMAL);
		     rfcSearch = "| inputlookup CMDB_ChangeManagement.csv | eval starttime1=round(strptime(starttime,\"%m/%d/%Y %H:%M\"),0)|"
		     		+ "where like(application, \"%"+applicationName+"%\")| sort _time| rename  rfcid as \"RFC_ID\", application as \"Impacted Applications\","
		     		+ " title as \"Title\", description as \"Description\", starttime as \"Start Time\", endtime as \"End Time\", "
		     		+ "impactednodes as \"Impacted Nodes\", requester as \"Requester\", status as \"Status\" |"
		     		+ " table RFC_ID, \"Impacted Applications\", \"Title\", \"Description\", \"Start Time\", \"End Time\", \"Impacted Nodes\", Requester, Status";
		     job = service.getJobs().create(rfcSearch, jobargs);
		     
		     while (!job.isDone()) {
		            try {
		                Thread.sleep(500);
		            } catch (InterruptedException e) {
		                
		                e.printStackTrace();
		            }
		        }
			 resultsNormalSearch =  job.getResults();
			 logger.debug(":::"+resultsNormalSearch.toString());
	         resultsReaderNormalSearch = new ResultsReaderXml(resultsNormalSearch);
	        
	         while ((event = resultsReaderNormalSearch.getNextEvent()) != null) {
	        	 logger.debug( "Event Size::"+event.size());
	            	for (String key: event.keySet())
	                {
	            		RfcDetailsBean rfcDetailsBean = new RfcDetailsBean();
	            			String[] data = event.toString().split(",");
	            			logger.debug("data size-->"+data.length);
	            			int inc = 0;
	            			String mapKey = null;
	            			rfcDetailsBean.setRfcId(data[0]);
	            			rfcDetailsBean.setImpactedApplication(data[1]);
	            			rfcDetailsBean.setTitle(data[2]);
	            			rfcDetailsBean.setDescription(data[3]);
	            			rfcDetailsBean.setStartDt(data[4]);
	            			rfcDetailsBean.setEndDt(data[5]);
	            			rfcDetailsBean.setImpactedNodes(data[6]);
	            			rfcDetailsBean.setRequester(data[7]);
	            			rfcDetailsBean.setStatus(data[8]);
	            			
	            			rfcDetailsBeanList.add(rfcDetailsBean);
	            		
	                }
	            }
	         for (RfcDetailsBean rfcDetailsBean: rfcDetailsBeanList)
	    		{
	            	System.out.println(rfcDetailsBean.getRfcId()+"::"+rfcDetailsBean.getTitle()+"::"+rfcDetailsBean.getDescription()+" ::: " );
	           
         		
	    		}
	         
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return rfcDetailsBeanList; 
	}

}
