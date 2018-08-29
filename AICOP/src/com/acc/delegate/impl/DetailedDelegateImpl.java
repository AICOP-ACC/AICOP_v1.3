package com.acc.delegate.impl;

import java.util.List;

import com.acc.bean.AICOPConfigBean;
import com.acc.delegate.DetailedDelegate;
import com.acc.service.DetailedService;

public class DetailedDelegateImpl implements DetailedDelegate
{

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
	

}
