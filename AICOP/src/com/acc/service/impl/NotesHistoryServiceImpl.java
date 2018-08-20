package com.acc.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.bean.NotesBean;
import com.acc.dao.NotesHistoryDao;
import com.acc.service.NotesHistoryService;

@Service(value="notesHistoryService")
public class NotesHistoryServiceImpl implements NotesHistoryService {
	
	
	@Resource(name="notesHistoryService")
	private NotesHistoryService notesHistoryService;
	
	
	@Autowired
	private NotesHistoryDao notesHistoryDao;

	
	
	public void setNotesHistoryService(NotesHistoryService notesHistoryService) {
		this.notesHistoryService = notesHistoryService;
	}



	@Override
	public NotesBean saveNotesHistory(String notesHist) {
		 System.out.println("In saveNotesHistory delegateImpl");
		return notesHistoryDao.saveNotesHistory(notesHist);
	}



	@Override
	public List<NotesBean> getNotesHistory() {
		System.out.println("In getNotesHistory serviceimpl");
		return notesHistoryDao.getNotesHistory();
	}

}
