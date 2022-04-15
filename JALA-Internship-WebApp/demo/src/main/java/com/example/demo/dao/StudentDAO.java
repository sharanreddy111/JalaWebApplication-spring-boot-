package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.StudentEntity;

/*
 * DAO Interface is for performing various operation and mandatory function like save,delete are done by extending JpaRepository.
 * We can also add our user specific operation as shown below using Query. 
 */

@Repository
public interface StudentDAO extends JpaRepository<StudentEntity,Integer>{
	
	@Query("select s from StudentEntity s where UPPER(s.firstName)=UPPER(?1) or UPPER(s.lastName)=UPPER(?1) or UPPER(s.mobileNumber)=UPPER(?1)")
	public List<StudentEntity> findBySearch(String value);
	
	@Query("select s from StudentEntity s where s.mobileNumber=?1")
	public StudentEntity checkJobSeeker(String phonenumber);
	
	

}
