package com.acc.delegate;

import java.util.List;

import com.acc.bean.NotesBean;

public interface NotesHistoryDelegate {
	NotesBean saveNotesHistory(String notesHist);
	List<NotesBean> getNotesHistory();
}
