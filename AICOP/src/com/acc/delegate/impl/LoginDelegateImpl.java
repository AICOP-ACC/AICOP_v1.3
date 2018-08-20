package com.acc.delegate.impl;

import java.util.List;

import com.acc.bean.NotesBean;
import com.acc.bean.UserBean;
import com.acc.delegate.LoginDelegate;
import com.acc.service.LoginService;
import com.acc.service.NotesHistoryService;

public class LoginDelegateImpl implements LoginDelegate {

	private LoginService loginService;
	
	private NotesHistoryService notesHistoryService;

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	
	public void setNotesHistoryService(NotesHistoryService notesHistoryService) {
		this.notesHistoryService = notesHistoryService;
	}


	@Override
	public boolean authenticateUser(UserBean userBean) {
		System.out.println("In delegateImpl");
		return loginService.authenticateUser(userBean);
	}

	@Override
	public NotesBean saveNotesHistory(String notesHist) {
		
		return notesHistoryService.saveNotesHistory(notesHist);
	}

	@Override
	public List<NotesBean> getNotesHistory() {
		
		return notesHistoryService.getNotesHistory();
	}
	
	
}
