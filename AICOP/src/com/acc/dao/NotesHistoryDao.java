package com.acc.dao;

import java.util.List;

import com.acc.bean.NotesBean;

public interface NotesHistoryDao {
	NotesBean saveNotesHistory(String notesHist,String loginId);
	List<NotesBean> getNotesHistory();
}
