package com.acc.controller;

import com.acc.delegate.NotesHistoryDelegate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acc.bean.NotesBean;

@Controller
public class NotesHistoryController {

	final static Logger logger = Logger.getLogger(NotesHistoryController.class);
	
	@Autowired
    private HttpSession session;
	
	private NotesHistoryDelegate notesHistoryDelegate;
	

	public void setNotesHistoryDelegate(NotesHistoryDelegate notesHistoryDelegate) {
		this.notesHistoryDelegate = notesHistoryDelegate;
	}

@RequestMapping(value="/notesHistory.do",method=RequestMethod.POST)
public @ResponseBody NotesBean saveNotesHistory(@RequestBody String notesVal,HttpServletRequest request,HttpServletResponse response) {
	
	String loginId = session.getAttribute("result").toString();
	
	NotesBean notesBean = notesHistoryDelegate.saveNotesHistory(notesVal,loginId);
	 return notesBean;
	}
}
