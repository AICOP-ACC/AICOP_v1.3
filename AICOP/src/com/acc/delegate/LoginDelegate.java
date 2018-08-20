package com.acc.delegate;

import com.acc.bean.UserBean;
import java.util.List;
import com.acc.bean.NotesBean;

public interface LoginDelegate {
	
	boolean authenticateUser(UserBean userBean);
	
	NotesBean saveNotesHistory(String notesHist);
	List<NotesBean> getNotesHistory();

}
