package com.acc.service;

import java.util.List;

import com.acc.bean.AICOPConfigBean;
import com.acc.bean.RfcDetailsBean;


public interface DetailedService 
{

	List<AICOPConfigBean> getDetailedResult();
	// List<String> getDetailedResult();
	public List<RfcDetailsBean> getRfcDetails(String applicationName);
}
