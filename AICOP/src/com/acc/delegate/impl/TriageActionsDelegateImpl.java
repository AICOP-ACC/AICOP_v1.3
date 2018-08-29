package com.acc.delegate.impl;

import com.acc.bean.ManualActionsBean;
import com.acc.bean.SuggestedActionBean;
import com.acc.delegate.TriageActionsDelegate;
import com.acc.service.TriageActionsService;

public class TriageActionsDelegateImpl implements TriageActionsDelegate{

	private TriageActionsService triageActionsService;

	public void setTriageActionsService(TriageActionsService triageActionsService) {
		this.triageActionsService = triageActionsService;
	}

	@Override
	public SuggestedActionBean getActionDetailsForId(String actionId) {
		// TODO Auto-generated method stub
		return triageActionsService.getActionDetailsForId(actionId);
	}

	@Override
	public boolean saveAction(ManualActionsBean manualActionsBean) {
		
		return triageActionsService.saveAction(manualActionsBean);
	}

	@Override
	public boolean removeAction(String actionId) {
		
		return triageActionsService.removeAction(actionId);
	}
	
	
}
