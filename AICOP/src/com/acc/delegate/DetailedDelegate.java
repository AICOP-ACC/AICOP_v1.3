package com.acc.delegate;

import java.util.List;

import com.acc.bean.AICOPConfigBean;
import com.acc.bean.RfcDetailsBean;


public interface DetailedDelegate 
{

	List<AICOPConfigBean> getDetailedResult();
	//List<String> getDetailedResult();
	public List<RfcDetailsBean> getRfcDetails(String applicationName);
}
