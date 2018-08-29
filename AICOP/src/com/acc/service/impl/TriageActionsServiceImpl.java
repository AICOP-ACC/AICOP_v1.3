package com.acc.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.bean.ManualActionsBean;
import com.acc.bean.SuggestedActionBean;
import com.acc.dao.TriageActionsDao;

import com.acc.service.TriageActionsService;

@Service(value="triageActionsService")
public class TriageActionsServiceImpl implements  TriageActionsService{
	
	@Resource(name="triageActionsService")
	private TriageActionsService triageActionsService;
	
	@Autowired
	private TriageActionsDao triageActionsDao;

	public void setTriageActionsService(TriageActionsService triageActionsService) {
		this.triageActionsService = triageActionsService;
	}

	@Override
	public List<SuggestedActionBean> getSuggestedActions() {
		return triageActionsDao.getSuggestedActions();
	}

	@Override
	public SuggestedActionBean getActionDetailsForId(String actionId) {
		List<SuggestedActionBean> suggestedActionsList = triageActionsDao.getActionDetailsForId(actionId);
		if(suggestedActionsList.size()>0) {
			return suggestedActionsList.get(0);
		}
		return null;
	}

	@Override
	public boolean saveAction(ManualActionsBean manualActionsBean) {
		
		return triageActionsDao.saveAction(manualActionsBean);
	}

	@Override
	public List<ManualActionsBean> getManualActions() {
		return triageActionsDao.getManualActions();
	}

	@Override
	public boolean removeAction(String actionId) {
		return triageActionsDao.removeAction(actionId);
	}
	
	
	

}
