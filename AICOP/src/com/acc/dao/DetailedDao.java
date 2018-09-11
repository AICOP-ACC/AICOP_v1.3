package com.acc.dao;

import java.util.List;

import com.acc.bean.AICOPConfigBean;
import com.acc.bean.RfcDetailsBean;

public interface DetailedDao 
{
	List<AICOPConfigBean> getDetailedDaoResult();
	//List<String> getDetailedDaoResult();
	public List<RfcDetailsBean> getRfcDetails(String applicationName);

}
