package com.acc.dao;

import java.util.List;

import com.acc.bean.ManualActionsBean;
import com.acc.bean.SuggestedActionBean;

public interface TriageActionsDao {

	List<SuggestedActionBean> getSuggestedActions();
	
	List<SuggestedActionBean> getActionDetailsForId(String actionId);
	
	boolean saveAction(ManualActionsBean manualActionsBean);
	
	List<ManualActionsBean> getManualActions();
	
	boolean removeAction(String actionId);
}
