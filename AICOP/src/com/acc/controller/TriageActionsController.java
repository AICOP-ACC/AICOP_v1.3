package com.acc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acc.bean.ManualActionsBean;
import com.acc.bean.SuggestedActionBean;
import com.acc.delegate.TriageActionsDelegate;

@Controller
public class TriageActionsController {

	final static Logger logger = Logger.getLogger(TriageActionsController.class);
	
	private TriageActionsDelegate triageActionsDelegate;
	
	public void setTriageActionsDelegate(TriageActionsDelegate triageActionsDelegate) {
		this.triageActionsDelegate = triageActionsDelegate;
	}
	
	@RequestMapping(value="/getActionForId.do",method=RequestMethod.POST)
	public @ResponseBody SuggestedActionBean getActionDetailsForId(@RequestBody String actionId,HttpServletRequest request,HttpServletResponse response) {
		
		SuggestedActionBean suggestedActionBean = new  SuggestedActionBean();
		suggestedActionBean = triageActionsDelegate.getActionDetailsForId(actionId);
		
		return suggestedActionBean;
	}
	
	
	@RequestMapping(value="/saveAction.do",method=RequestMethod.POST)
	public @ResponseBody boolean saveActions(@RequestBody ManualActionsBean manualActionsBean,HttpServletRequest request,HttpServletResponse response) {
		boolean isSaved = triageActionsDelegate.saveAction(manualActionsBean);
		
		return isSaved;
	}
	
	
	@RequestMapping(value="/removeAction.do",method=RequestMethod.POST)
	public @ResponseBody boolean removeActionForId(@RequestBody String actionId,HttpServletRequest request,HttpServletResponse response) {
		
		
		boolean deleteFlag = triageActionsDelegate.removeAction(actionId);
		
		return deleteFlag;
	}
}
