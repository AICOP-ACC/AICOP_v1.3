package com.acc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acc.delegate.DetailedDelegate;
import com.acc.bean.RfcDetailsBean;
@Controller
public class DetailedController {

	final static Logger logger = Logger.getLogger(DetailedController.class);
	
	private DetailedDelegate detailedDelegate;
	
	public void setDetailedDelegate(DetailedDelegate detailedDelegate) {
		this.detailedDelegate = detailedDelegate;
	}
	
	@RequestMapping(value="/getRfcDetailsForApp.do",method=RequestMethod.POST)
	public @ResponseBody List<RfcDetailsBean> getRfcDetailsForApp(@RequestBody String appName,HttpServletRequest request,HttpServletResponse response) {
		logger.debug("Into the controller get rfc details");
		return detailedDelegate.getRfcDetails(appName);
	}
}
