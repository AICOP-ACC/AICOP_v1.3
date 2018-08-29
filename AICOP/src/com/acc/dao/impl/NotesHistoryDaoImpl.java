package com.acc.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.acc.bean.NotesBean;
import com.acc.dao.NotesHistoryDao;

@Repository
@Transactional
public class NotesHistoryDaoImpl implements NotesHistoryDao{
	private static SessionFactory sessionFactory ;
 	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	
	
	@SuppressWarnings("unchecked")
	@Override
	public NotesBean saveNotesHistory(String notesHist,String loginId) {
		NotesBean notesBean = new NotesBean();
		boolean rUpdate = false;
		System.out.println("inside saveNotesHistory daoimpl-->start");
		// TODO Auto-generated method stub


	try {
	    
	    Configuration configuration = new Configuration();
	    System.out.println("configuration"+configuration);
	configuration.configure("hbm.cfg.xml");
	System.out.println("configuration-->"+configuration);
	ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();   
	
	System.out.println("serviceRegistry"+serviceRegistry);
	 sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	
	   // return sessionFactory;
	}
	catch (Throwable ex) {
	//logger.error("Initial SessionFactory creation failed." + ex);
	throw new ExceptionInInitializerError(ex);
	}
	StringBuilder queryBuffer = new StringBuilder();
	
	/*queryBuffer.append("insert into notes_history(notes) values ('");
	queryBuffer.append(notesHist+"')");*/

	queryBuffer.append("insert into notes_history(notes,user_id) values ('");
	queryBuffer.append(notesHist+"','"+loginId+"')");
	
	System.out.println(queryBuffer.toString());

System.out.println("save sF"+sessionFactory);
	Session session = sessionFactory.openSession();

	Transaction tx = session.beginTransaction();
	Query qr = session.createSQLQuery(queryBuffer.toString());
	int rowInserted = qr.executeUpdate();
	tx.commit();
	
	System.out.println("rowInserted"+rowInserted);
	
	
	List<NotesBean> resultList = new ArrayList<NotesBean>();
	
	if(rowInserted>0){
System.out.println("row ins>0");
		StringBuilder queryBuffer1 = new StringBuilder();
		queryBuffer1.append("SELECT notes as \"notes\",");
		queryBuffer1.append(" user_id as \"owner\",");
		queryBuffer1.append(" timestamp as \"timestamp\"");
		queryBuffer1.append(" FROM notes_history");
		queryBuffer1.append(" ORDER BY timestamp DESC limit 1");
		System.out.println("row ins>0"+queryBuffer1.toString());
		
		Query qr1 = session.createSQLQuery(queryBuffer1.toString())
				.addScalar("notes",StandardBasicTypes.STRING)
				.addScalar("owner",StandardBasicTypes.STRING)
				.addScalar("timestamp",StandardBasicTypes.STRING)
				.setResultTransformer(new AliasToBeanResultTransformer(NotesBean.class));
				
		 resultList = qr1.list();
		System.out.println("row ins>0"+resultList.size());
		for(NotesBean notes : resultList)
		 {
			notesBean.setNotes(notes.getNotes());
			notesBean.setOwner(notes.getOwner());
			notesBean.setTimestamp(notes.getTimestamp());
		 }
	}
	
	session.close();
	sessionFactory.close();
	//return resultList;
	return notesBean;
}

	@SuppressWarnings("unchecked")
	@Override
	public List<NotesBean> getNotesHistory() {
		System.out.println("In getNotesHistory daoImpl-->start");
		 try {
		        Configuration configuration = new Configuration();
		    configuration.configure("hbm.cfg.xml");
		    ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();   
		     sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		    }
		catch (Throwable ex) {
		    throw new ExceptionInInitializerError(ex);
		}
			StringBuilder queryBuffer = new StringBuilder();
				queryBuffer.append("SELECT notes as \"notes\",");
				queryBuffer.append(" user_id as \"owner\",");
				queryBuffer.append(" timestamp as \"timestamp\"");
				queryBuffer.append(" FROM notes_history");
				queryBuffer.append(" ORDER BY timestamp DESC");
				System.out.println(queryBuffer.toString());
				Session session = sessionFactory.openSession();
				Query qr = session.createSQLQuery(queryBuffer.toString())
						.addScalar("notes",StandardBasicTypes.STRING)
						.addScalar("owner",StandardBasicTypes.STRING)
						.addScalar("timestamp",StandardBasicTypes.STRING)
						.setResultTransformer(new AliasToBeanResultTransformer(NotesBean.class));
						
				List<NotesBean> resultList = qr.list();
				System.out.println(resultList.size());
				System.out.println("In getNotesHistory daoImpl-->end");
				return resultList;
		
	}

}
