package com.acc.service;

import java.util.List;

import com.acc.bean.NotesBean;

public interface NotesHistoryService {
	NotesBean saveNotesHistory(String notesHist);
	List<NotesBean> getNotesHistory();
}
