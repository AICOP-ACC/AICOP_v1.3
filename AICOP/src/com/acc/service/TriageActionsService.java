package com.acc.service;

import java.util.List;

import com.acc.bean.ManualActionsBean;
import com.acc.bean.SuggestedActionBean;

public interface TriageActionsService {
	
	List<SuggestedActionBean> getSuggestedActions();
	
	SuggestedActionBean getActionDetailsForId(String actionId);
	boolean saveAction(ManualActionsBean manualActionsBean);
	List<ManualActionsBean> getManualActions();
	boolean removeAction(String actionId);

}
