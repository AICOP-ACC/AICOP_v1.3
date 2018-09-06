package com.acc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import com.acc.bean.AICOPConfigBean;
import com.acc.bean.ManualActionsBean;
import com.acc.bean.NotesBean;
import com.acc.bean.SuggestedActionBean;
import com.acc.bean.UserBean;
import com.acc.delegate.DetailedDelegate;
import com.acc.delegate.LoginDelegate;
import com.acc.form.LoginForm;

@Controller
public class LoginController {
	final static Logger logger = Logger.getLogger(LoginController.class);

	@Autowired
    private HttpSession session;
	
	private LoginDelegate loginDelegate;
	
	private DetailedDelegate detailedDelegate;
		
	public void setLoginDelegate(LoginDelegate loginDelegate) {
		this.loginDelegate = loginDelegate;
	}
	
	

	public void setDetailedDelegate(DetailedDelegate detailedDelegate) {
		this.detailedDelegate = detailedDelegate;
	}



@RequestMapping(value="/begin.do")
public ModelAndView begin(HttpServletRequest request,HttpServletResponse response) {
	logger.debug("Begin do");
	ModelAndView mav = new ModelAndView();
	mav.setViewName("begin");
	return mav;
	
}


@RequestMapping( value = "/authenticate.do",method=RequestMethod.POST)
public ModelAndView registerUser(@ModelAttribute("loginForm")LoginForm loginForm ,HttpServletRequest request,HttpServletResponse response){
	logger.debug("Into controller-->"+loginForm.getUserId());
	session.setAttribute("result", loginForm.getUserId());
	ModelAndView mav = new ModelAndView();
	UserBean userBean = new UserBean();
	userBean.setUserId(loginForm.getUserId());
	userBean.setPassword(loginForm.getPassword());
	boolean flag = loginDelegate.authenticateUser(userBean);
	
	if(flag) {
	mav.addObject("result", "Authenticated Successfully");
	mav.setViewName("common/executiveView.jsp");
	}
	else {
		mav.addObject("errorMsg","Incorrect UserId/Password");
		mav.setViewName("begin");
	}
	return mav;
		}

@RequestMapping(value="/executiveView.do")
public ModelAndView loadExecutiveView(HttpServletRequest request,HttpServletResponse response) {
	logger.debug("loadExecutive View");
	ModelAndView mav = new ModelAndView();
	mav.setViewName("common/executiveView.jsp");
	return mav;
	}


	@RequestMapping(value="/detailedView.do")
	public ModelAndView loadDetailedView(HttpServletRequest request,HttpServletResponse response) {
		logger.debug("Load detailed View");
		ModelAndView mav = new ModelAndView();
		
		/*List<NotesBean> notesList = loginDelegate.getNotesHistory();
		
		mav.addObject("notesList",notesList);
		
		mav.setViewName("common/detailedView.jsp");*/
		mav.setViewName("common/detailedRenderView.jsp");
		
		return mav;
		}
	@RequestMapping(value="/detailedListView.do")
	public ModelAndView loadDetailedViewWithId(HttpServletRequest request,HttpServletResponse response) {
		logger.debug("Load detailed View with parameter");
		
		ModelAndView mav = new ModelAndView();
	List<NotesBean> notesList = loginDelegate.getNotesHistory();
	mav.addObject("notesList",notesList);
	
	//Soundariya : Load Triage Actions
	List<SuggestedActionBean> suggestedActionsList = loginDelegate.getSuggestedActions();
	mav.addObject("suggestedActionsList",suggestedActionsList);
	
	
	//Load Manual Actions
	List<ManualActionsBean> manualActionsBeanList = loginDelegate.getManualActions();
	mav.addObject("manualActionsBeanList",manualActionsBeanList);
	
	logger.debug("COntroller --> size of actions List ->"+suggestedActionsList.size());
	List<AICOPConfigBean> listres = detailedDelegate.getDetailedResult();

	String result1 = listres.get(0).getIcon();
	String result2 = listres.get(1).getIcon();
	String result3 = listres.get(2).getIcon();
	String result4 = listres.get(3).getIcon();
	
		mav.addObject("result1", result1);
		mav.addObject("result2", result2);
		mav.addObject("result3", result3);
		mav.addObject("result4", result4);
		mav.addObject("result5", result1);
		mav.addObject("result6", result3);
	mav.addObject("detailList", "success");
	
	mav.setViewName("common/detailedRenderView.jsp");
	return mav;
	}
}
