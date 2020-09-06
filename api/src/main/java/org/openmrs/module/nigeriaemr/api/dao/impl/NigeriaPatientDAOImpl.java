package org.openmrs.module.nigeriaemr.api.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.criterion.Restrictions;
import org.openmrs.Patient;
import org.openmrs.api.db.DAOException;
import org.openmrs.api.db.hibernate.DbSession;
import org.openmrs.api.db.hibernate.DbSessionFactory;
import org.openmrs.api.db.hibernate.HibernatePatientDAO;
import org.openmrs.api.db.hibernate.PatientSearchCriteria;
import org.openmrs.module.nigeriaemr.api.dao.NigeriaPatientDAO;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Vector;

public class NigeriaPatientDAOImpl extends HibernatePatientDAO implements NigeriaPatientDAO {
	
	DbSessionFactory sessionFactory;
	
	private DbSession getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	/**
	 * @param sessionFactory the sessionFactory to set
	 */
	public void setSessionFactory(DbSessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Patient> getPatients(Integer startId, Integer endId, boolean includeVoided) throws DAOException {
		Criteria criteria = getSession().createCriteria(Patient.class);
		if (!includeVoided)
			criteria.add(Restrictions.eq("voided", false));
		criteria.add(Restrictions.ge("patientId", startId));
		criteria.add(Restrictions.le("patientId", endId));
		return criteria.list();
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Integer> getPatientIds(Integer startId, Integer endId, boolean includeVoided) throws DAOException {
		
		String query = "SELECT distinct(patient.patient_id) FROM patient patient "
		        + "WHERE patient.patient_id >= :startId OR patient.patient_id >= :endId AND patient.voided = false";
		
		SQLQuery sql = getSession().createSQLQuery(query);
		
		sql.setInteger("startId", startId);
		sql.setInteger("endId", endId);
		
		return sql.list();
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Patient> getPatients(List<Integer> patientIds, boolean includeVoided) throws DAOException {
		Criteria criteria = getSession().createCriteria(Patient.class);
		if (!includeVoided)
			criteria.add(Restrictions.eq("voided", false));
		criteria.add(Restrictions.in("patientId", patientIds));
		return criteria.list();
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Patient> getPatientsByEncounterDate(Date fromDate, Date toDate, boolean includeVoided) throws DAOException {
		List<Patient> patients = new ArrayList<Patient>();
		List<Integer> patientIds;
		
		String query = "SELECT distinct(patient.patient_id) FROM encounter encounter,patient patient  WHERE (encounter.date_created >= :fromDate OR encounter.date_changed >= :fromDate)";
		if (toDate != null)
			query += " AND (encounter.date_created <= :toDate OR encounter.date_changed <= :toDate)";
		query += " AND encounter.voided = false";
		query += " AND patient.patient_id = encounter.patient_id ";
		query += " AND patient.voided = false ";
		
		SQLQuery sql = getSession().createSQLQuery(query);
		
		sql.setDate("fromDate", fromDate);
		if (toDate != null)
			sql.setDate("toDate", toDate);
		
		patientIds = sql.list();
		
		if (patientIds.size() >= 1) {
			patients = this.getPatients(patientIds, includeVoided);
		}
		
		return patients;
	}
	
	@Override
	public List<Integer> getPatientIdsByEncounterDate(Date fromDate, Date toDate, boolean includeVoided) throws DAOException {
		String query = "SELECT distinct(encounter.patient_id) FROM encounter encounter WHERE (encounter.date_created >= :fromDate OR encounter.date_changed >= :fromDate)";
		if (toDate != null)
			query += " AND (encounter.date_created <= :toDate OR encounter.date_changed <= :toDate)";
		
		SQLQuery sql = getSession().createSQLQuery(query);
		
		sql.setDate("fromDate", fromDate);
		if (toDate != null)
			sql.setDate("toDate", toDate);
		
		return sql.list();
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Patient> getPatientsByEncounterDate(int startIndex, int endIndex, Date lastEncounterDate,
	        boolean includeVoided) throws DAOException {
		List<Patient> patients = new ArrayList<Patient>();
		List<Integer> patientIds;
		
		String query = "SELECT distinct(patient.patient_id) FROM encounter encounter,patient patient, WHERE patient.patient_id in :";
		if (lastEncounterDate != null)
			query += " AND (encounter.date_created <= :toDate OR encounter.date_changed <= :toDate)";
		query += " AND encounter.voided = false";
		query += " AND encounter.voided = false ";
		query += " AND patient.patient_id = encounter.patient_id ";
		query += " AND patient.voided = false ";
		
		SQLQuery sql = getSession().createSQLQuery(query);
		if (lastEncounterDate != null)
			sql.setDate("toDate", lastEncounterDate);
		
		patientIds = sql.list();
		
		if (patientIds.size() >= 1) {
			patients = this.getPatients(patientIds, includeVoided);
		}
		
		return patients;
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public String getPatientIdentifier(Integer patientId, Integer identifierType) throws DAOException {
		
		String query = "SELECT distinct(patient_identifier.identifier) FROM patient_identifier patient_identifier "
		        + " WHERE patient_identifier.identifier_type = :identifierType AND patient_identifier.patient_id = :patientId ";
		query += " AND patient_identifier.voided = false";
		SQLQuery sql = getSession().createSQLQuery(query);
		sql.setInteger("identifierType", identifierType);
		sql.setInteger("patientId", patientId);
		return sql.uniqueResult().toString();
	}
	
}
