package com.acc.delegate.impl;

import java.util.List;

import com.acc.bean.NotesBean;
import com.acc.delegate.NotesHistoryDelegate;
import com.acc.service.NotesHistoryService;

public class NotesHistoryDelegateImpl implements NotesHistoryDelegate{
	
	private NotesHistoryService notesHistoryService;

	
	public void setNotesHistoryService(NotesHistoryService notesHistoryService) {
		this.notesHistoryService = notesHistoryService;
	}

	@Override
	public NotesBean saveNotesHistory(String notesHist,String loginId) {
		
		System.out.println("In saveNotesHistory delegateImpl");
		return notesHistoryService.saveNotesHistory(notesHist,loginId);
	}

	@Override
	public List<NotesBean> getNotesHistory() {
		System.out.println("In getNotesHistory delegateImpl");
		return notesHistoryService.getNotesHistory();
	
	}

}
