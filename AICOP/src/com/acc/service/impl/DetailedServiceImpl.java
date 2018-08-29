package com.acc.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.bean.AICOPConfigBean;
import com.acc.dao.DetailedDao;
import com.acc.service.DetailedService;

@Service(value="detailedService")
public class DetailedServiceImpl implements DetailedService
{

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

}
