package com.acc.delegate.impl;

import java.util.List;

import com.acc.bean.ManualActionsBean;
import com.acc.bean.NotesBean;
import com.acc.bean.SuggestedActionBean;
import com.acc.bean.UserBean;
import com.acc.delegate.LoginDelegate;
import com.acc.service.LoginService;
import com.acc.service.NotesHistoryService;
import com.acc.service.TriageActionsService;

public class LoginDelegateImpl implements LoginDelegate {

	private LoginService loginService;
	
	private NotesHistoryService notesHistoryService;
	
	private TriageActionsService triageActionsService;

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	
	public void setNotesHistoryService(NotesHistoryService notesHistoryService) {
		this.notesHistoryService = notesHistoryService;
	}


	public void setTriageActionsService(TriageActionsService triageActionsService) {
		this.triageActionsService = triageActionsService;
	}


	@Override
	public boolean authenticateUser(UserBean userBean) {
		System.out.println("In delegateImpl");
		return loginService.authenticateUser(userBean);
	}

	@Override
	public NotesBean saveNotesHistory(String notesHist,String loginId) {
		
		return notesHistoryService.saveNotesHistory(notesHist,loginId);
	}

	@Override
	public List<NotesBean> getNotesHistory() {
		
		return notesHistoryService.getNotesHistory();
	}


	@Override
	public List<SuggestedActionBean> getSuggestedActions() {
		return triageActionsService.getSuggestedActions();
	}


	@Override
	public List<ManualActionsBean> getManualActions() {
		return triageActionsService.getManualActions();
	}
	
	
}
