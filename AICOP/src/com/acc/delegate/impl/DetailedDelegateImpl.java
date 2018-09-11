package com.acc.delegate.impl;

import java.util.List;

import org.apache.log4j.Logger;

import com.acc.bean.AICOPConfigBean;
import com.acc.bean.RfcDetailsBean;

import com.acc.delegate.DetailedDelegate;
import com.acc.service.DetailedService;

public class DetailedDelegateImpl implements DetailedDelegate
{
	final static Logger logger = Logger.getLogger(DetailedDelegateImpl.class);

	private DetailedService detailedService;

	
	public void setDetailedService(DetailedService detailedService) {
		this.detailedService = detailedService;
	}


	@Override
	public List<AICOPConfigBean> getDetailedResult()
	{
		System.out.println("Enter into detailed delegated impl.....");
		// TODO Auto-generated method stub
		List<AICOPConfigBean> listres = detailedService.getDetailedResult();
		System.out.println(listres.size());
		
		return listres;
	}


	@Override
	public List<RfcDetailsBean> getRfcDetails(String applicationName) {
		logger.debug("getRfcDetails delegate...");
		return detailedService.getRfcDetails(applicationName);
	}
	

}
