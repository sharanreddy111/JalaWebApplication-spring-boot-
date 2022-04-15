package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.demo.bean.DemoForJobSeekerBean;
import com.example.demo.dao.DemoForJobSeekerDAO;
import com.example.demo.entity.DemoForJobSeekerEntity;

/* In Service class, The methods in DAO are called and it acts as bridge between DAO and UserController class. 
 * Convertion of Entity to Bean and viceversa are done by using BeanUtils methods
 * */
@Service
@Transactional
public class DemoForJobSeekerServiceIMPL implements DemoForJobSeekerService {

	@Autowired
	DemoForJobSeekerDAO dao;

	@PersistenceContext
	EntityManager em;

	int ID = 0;

	public List<DemoForJobSeekerBean> findAll(int n, int size) {
		List<DemoForJobSeekerBean> sbean = new ArrayList<>();
		Pageable paging = PageRequest.of(n, size);
		Page<DemoForJobSeekerEntity> pagedResult = dao.findAll(paging);
		List<DemoForJobSeekerEntity> sentity = pagedResult.toList();
		for (DemoForJobSeekerEntity entity : sentity) {
			DemoForJobSeekerBean sb = new DemoForJobSeekerBean();
			BeanUtils.copyProperties(entity, sb);
			sbean.add(sb);
		}
		return sbean;
	}

	public List<DemoForJobSeekerBean> findAll() {
		List<DemoForJobSeekerBean> sbean = new ArrayList<>();
		List<DemoForJobSeekerEntity> sentity = dao.findAll();
		for (DemoForJobSeekerEntity entity : sentity) {
			DemoForJobSeekerBean sb = new DemoForJobSeekerBean();
			BeanUtils.copyProperties(entity, sb);
			sbean.add(sb);
		}
		return sbean;
	}

	@Override
	public String save(DemoForJobSeekerBean sbean) throws Exception {
		DemoForJobSeekerEntity sentity = new DemoForJobSeekerEntity();
		BeanUtils.copyProperties(sbean, sentity);
		dao.save(sentity);
		return "User Created Successfully";
	}

	public String delete(int id) {
		dao.deleteById(id);
		return "User Details Deleted Successfully";
	}

	public void deleteall() {
		Query q = em.createNativeQuery("truncate table jobseekerdemo");
		q.executeUpdate();

		em.close();

	}

	public List<DemoForJobSeekerBean> update(int id) {
		List<DemoForJobSeekerBean> sb = new ArrayList<>();
		DemoForJobSeekerBean sbean = new DemoForJobSeekerBean();
		DemoForJobSeekerEntity sentity = dao.getById(id);
		BeanUtils.copyProperties(sentity, sbean);
		sb.add(sbean);
		ID = id;
		return sb;
	}

	public int getId() {
		return ID;
	}

	public String edited(DemoForJobSeekerBean sbean, int id) throws Exception {
		DemoForJobSeekerEntity sentity = new DemoForJobSeekerEntity();
		// BeanUtils.copyProperties(sbean, sentity);
		sentity = dao.getById(id);
		sentity.setFirstName(sbean.getFirstName());
		sentity.setLastName(sbean.getLastName());
		sentity.setDate(sbean.getDate());
		sentity.setMobileNumber(sbean.getMobileNumber());
		sentity.setEmailId(sbean.getEmailId());
		sentity.setGender(sbean.getGender());
		sentity.setQualification(sbean.getQualification());
		sentity.setSkills(sbean.getSkills());
		sentity.setDescription(sbean.getDescription());
		dao.save(sentity);
		return "User Details Updated Successfully";
	}

	public List<DemoForJobSeekerBean> search(String value) {
		List<DemoForJobSeekerEntity> sentity = dao.findBySearch(value);
		List<DemoForJobSeekerBean> sbean = new ArrayList<>();
		for (DemoForJobSeekerEntity e : sentity) {
			DemoForJobSeekerBean b = new DemoForJobSeekerBean();
			BeanUtils.copyProperties(e, b);
			sbean.add(b);
		}
		return sbean;
	}

	public DemoForJobSeekerBean checkJobSeeker(String phonenumber) {
		DemoForJobSeekerEntity se = dao.checkJobSeeker(phonenumber);
		DemoForJobSeekerBean sb = new DemoForJobSeekerBean();
		BeanUtils.copyProperties(se, sb);
		return sb;
	}

}
