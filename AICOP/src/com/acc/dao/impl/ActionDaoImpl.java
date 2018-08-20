package com.acc.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.acc.bean.SuggestedActionBean;
import com.acc.dao.ActionDao;

@Repository
@Transactional
public class ActionDaoImpl implements ActionDao{
	private static SessionFactory sessionFactory ;
 	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<SuggestedActionBean> getSuggestedAction() {
		
		return null;
	}
}
