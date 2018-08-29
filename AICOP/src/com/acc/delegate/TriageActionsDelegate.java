package com.acc.delegate;

import com.acc.bean.ManualActionsBean;
import com.acc.bean.SuggestedActionBean;

public interface TriageActionsDelegate {
	
	SuggestedActionBean getActionDetailsForId(String actionId);
	boolean saveAction(ManualActionsBean manualActionsBean);
	boolean removeAction(String actionId);
	

}
