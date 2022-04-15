package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.demo.bean.StudentBean;
import com.example.demo.dao.StudentDAO;
import com.example.demo.entity.StudentEntity;

/* In Service class, The methods in DAO are called and it acts as bridge between DAO and UserController class. 
 * Convertion of Entity to Bean and viceversa are done by using BeanUtils methods
 * */
@Service
public class UserServiceIMPL implements UserService {

	@Autowired
	StudentDAO dao;

	private int ID = 0;

	public List<StudentBean> findAll(int n, int size) {
		List<StudentBean> sbean = new ArrayList<>();
		Pageable paging = PageRequest.of(n, size);
		Page<StudentEntity> pagedResult = dao.findAll(paging);
		List<StudentEntity> sentity = pagedResult.toList();
		for (StudentEntity entity : sentity) {
			StudentBean sb = new StudentBean();
			BeanUtils.copyProperties(entity, sb);
			sbean.add(sb);
		}
		return sbean;
	}

	public List<StudentBean> findAll() {
		List<StudentBean> sbean = new ArrayList<>();
		List<StudentEntity> sentity = dao.findAll();
		for (StudentEntity entity : sentity) {
			StudentBean sb = new StudentBean();
			BeanUtils.copyProperties(entity, sb);
			sbean.add(sb);
		}
		return sbean;
	}

	@Override
	public String save(StudentBean sbean) throws Exception {
		StudentEntity sentity = new StudentEntity();
		BeanUtils.copyProperties(sbean, sentity);
		dao.save(sentity);
		return "Job-Seeker Created Successfully";
	}

	public String delete(int id) {
		dao.deleteById(id);
		return "Job-Seeker Details Deleted Successfully";
	}

	public List<StudentBean> update(int id) {
		List<StudentBean> sb = new ArrayList<>();
		StudentBean sbean = new StudentBean();
		StudentEntity sentity = dao.getById(id);
		BeanUtils.copyProperties(sentity, sbean);
		sb.add(sbean);
		ID = id;
		return sb;
	}

	public int getId() {
		return ID;
	}

	public String edited(StudentBean sbean, int id) throws Exception {
		StudentEntity sentity = new StudentEntity();
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
		sentity.setActiveTill(sbean.getActiveTill());
		sentity.setPassword(sbean.getPassword());
		dao.save(sentity);
		return "Job-Seeker Details Updated Successfully";
	}

	public List<StudentBean> search(String value) {
		List<StudentEntity> sentity = dao.findBySearch(value);
		List<StudentBean> sbean = new ArrayList<>();
		for (StudentEntity e : sentity) {
			StudentBean b = new StudentBean();
			BeanUtils.copyProperties(e, b);
			sbean.add(b);
		}
		return sbean;
	}

	public StudentBean checkJobSeeker(String phonenumber) {
		StudentEntity se = dao.checkJobSeeker(phonenumber);
		StudentBean sb = new StudentBean();
		BeanUtils.copyProperties(se, sb);
		return sb;
	}

}
