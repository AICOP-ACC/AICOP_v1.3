package com.acc.delegate;

import com.acc.bean.UserBean;
import java.util.List;

import com.acc.bean.ManualActionsBean;
import com.acc.bean.NotesBean;
import com.acc.bean.SuggestedActionBean;

public interface LoginDelegate {
	
	boolean authenticateUser(UserBean userBean);
	
	NotesBean saveNotesHistory(String notesHist,String loginId);
	List<NotesBean> getNotesHistory();
	List<SuggestedActionBean> getSuggestedActions();
	List<ManualActionsBean> getManualActions();

}
