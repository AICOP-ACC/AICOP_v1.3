package com.acc.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.bean.AICOPConfigBean;
import com.acc.bean.RfcDetailsBean;
import com.acc.dao.DetailedDao;
import com.acc.delegate.impl.DetailedDelegateImpl;
import com.acc.service.DetailedService;

@Service(value="detailedService")
public class DetailedServiceImpl implements DetailedService
{

	final static Logger logger = Logger.getLogger(DetailedServiceImpl.class);
	
	@Resource(name="detailedService")
	private DetailedService detailedService;
	
	public void setDetailedService(DetailedService detailedService) {
		this.detailedService = detailedService;
	}

	@Autowired
	private DetailedDao detailedDao;
	
	@Override
	public List<AICOPConfigBean> getDetailedResult()
	{
		List<AICOPConfigBean> detres = detailedDao.getDetailedDaoResult();
		System.out.println(detres.size());
		// TODO Auto-generated method stub
		return detres;
	}

	@Override
	public List<RfcDetailsBean> getRfcDetails(String applicationName) {
		logger.debug("getRfcDetails service");
		return detailedDao.getRfcDetails(applicationName);
	}

}
