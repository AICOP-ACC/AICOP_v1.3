package com.acc.common.impl;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.context.annotation.Configuration;

import com.acc.model.Incident_Details;
import com.acc.common.ConnectSplunkSource;
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
		this.serviceArgs.setPassword("aiam-singtel");
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
	
	

}
