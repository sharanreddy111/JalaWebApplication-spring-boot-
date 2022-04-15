package com.example.demo.controller;

import java.text.ParseException;
import java.time.LocalDate;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.bean.AdminBean;
import com.example.demo.bean.JobSeekersBean;
import com.example.demo.bean.PageCountBean;
import com.example.demo.bean.StudentBean;
import com.example.demo.service.UserServiceIMPL;

/*
 * Controller acts as bridge between database/bean and webpage, It accepts the url and connect with repective function with the help of RequestMapping annotation.
 */
@RestController
public class UserController {

	@Autowired
	UserServiceIMPL service;

	PageCountBean pcb = new PageCountBean();
	private int Id;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		return new ModelAndView("index", "jobseeker", new JobSeekersBean());
	}

	@RequestMapping(value = "/jobseekers", method = RequestMethod.POST)
	public ModelAndView interns(@ModelAttribute("jobseeker") JobSeekersBean jobseekers) throws ParseException {
		ModelAndView modelandview = new ModelAndView();
		LocalDate date = LocalDate.now();
		StudentBean stubean = service.checkJobSeeker(jobseekers.getPhoneNumber());
		// Validating username and password
		if (stubean != null && stubean.getPassword().equals(jobseekers.getPassword())) {
			// validate days for active user
			if (stubean.getActiveTill().compareTo(date) <= 0) {
				modelandview.setViewName("index");
				modelandview.addObject("jobseeker", new JobSeekersBean());
				modelandview.addObject("message", "Your access has expired/ended");
				modelandview.addObject("message2", "Click here to contact us for >> ACCESS");
			} else {
				modelandview.setViewName("jobseekers");
				modelandview.addObject("message", "----- Welcome " + stubean.getFirstName() + " -----");
				Id = stubean.getStudentId();
			}
		} else {
			modelandview.setViewName("index");
			modelandview.addObject("jobseeker", new JobSeekersBean());
			modelandview.addObject("message", "Enter Valid UserName or Password");
		}
		return modelandview;
	}

	@RequestMapping(value = "/demojobseekershome", method = RequestMethod.GET)
	public ModelAndView demofirst() {
		return new ModelAndView("jobseekers");
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView first() {
		return new ModelAndView("admin", "adminBean", new AdminBean());
	}

	@RequestMapping(value = "/adminhome", method = RequestMethod.GET)
	public ModelAndView adminHome() {
		return new ModelAndView("home");
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logOut() {
		return new ModelAndView("admin", "adminBean", new AdminBean());
	}

	// Admin validation and requests
	@RequestMapping(value = "/homepage", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("adminBean") AdminBean bean) {
		ModelAndView modelAndView = new ModelAndView();

//		PASSWORD

		if (bean.getUsername().equals("admin") && bean.getPassword().equals("admin")) {
			modelAndView.setViewName("home");
		} else {
			modelAndView.setViewName("index");
		}
		return modelAndView;
	}

	@RequestMapping(value = "/studentdetail", method = RequestMethod.POST)
	public ModelAndView changeCount(@ModelAttribute("pcb") PageCountBean page, BindingResult b) {
		if (b.hasErrors()) {
			pcb.setCount(page.getCount());
		} else {
			pcb.setCount(page.getCount());
		}
		return studentreport(0);
	}

	public int getPageCount() {
		return pcb.getCount();
	}

	@RequestMapping(value = "/studentdetails{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView studentreport(@PathVariable("no") int no) {
		ModelAndView modelandview = new ModelAndView();
		List<StudentBean> sbean = service.findAll(no, getPageCount());
		int totalpages = service.findAll().size() / getPageCount();
		modelandview.addObject("pcb", new PageCountBean());
		modelandview.addObject("stubean", sbean);
		modelandview.addObject("total", totalpages);
		modelandview.setViewName("studentreport");
		return modelandview;
	}

	@RequestMapping(value = "/createstudent", method = RequestMethod.GET)
	public ModelAndView studentCreation() {
		return new ModelAndView("creationTab", "studentbean", new StudentBean());
	}

	// Enrollment form validation
	@RequestMapping(value = "/success", method = RequestMethod.POST)
	public ModelAndView successfulCreation(@Valid @ModelAttribute("studentbean") StudentBean sbean, BindingResult b)
			throws Exception {
		ModelAndView modelandview = new ModelAndView();
		if (b.hasErrors()) {
			modelandview.setViewName("creationTab");
		} else {
			String s = service.save(sbean);
			modelandview.addObject("message", s);
			modelandview.setViewName("successpage");
		}
		return modelandview;
	}

	@RequestMapping(value = "/deletestudent{Id}", method = RequestMethod.GET)
	public ModelAndView deleteStudent(@PathVariable("Id") int studentID) {
		String s = service.delete(studentID);
		return new ModelAndView("delete", "message", s);
	}

	@RequestMapping(value = "/editstudent{Id}", method = RequestMethod.GET)
	public ModelAndView editStudent(@PathVariable("Id") int studentID) {
		ModelAndView modelandview = new ModelAndView();
		List<StudentBean> sbean = service.update(studentID);
		for (StudentBean sBean : sbean) {
			modelandview.setViewName("update");
			modelandview.addObject("studentbean", sBean);
		}
		modelandview.addObject("stbean", sbean);
		return modelandview;
	}

	@RequestMapping(value = "/edited", method = RequestMethod.POST)
	public ModelAndView editedsuccessful(@Valid @ModelAttribute("studentbean") StudentBean sbean, BindingResult b)
			throws Exception {
		ModelAndView modelandview = new ModelAndView();
		int id = service.getId();
		String s = service.edited(sbean, id);
		modelandview.addObject("message", s);
		modelandview.setViewName("successpage");
		return modelandview;
	}

	@RequestMapping(value = "/search{s}", method = RequestMethod.GET)
	public ModelAndView findStudent(@PathVariable("s") String value) {
		ModelAndView mv = new ModelAndView();
		List<StudentBean> sbean = service.search(value);
		mv.addObject("pcb", new PageCountBean());
		mv.addObject("stubean", sbean);
		mv.setViewName("studentreport");
		return mv;
	}
	/*
	 * @RequestMapping(value="/demoforjobseekers", method=RequestMethod.GET) public
	 * ModelAndView demologin() { return new ModelAndView("demohome"); }
	 */

	@RequestMapping(value = "/updatefromjobseekers", method = RequestMethod.GET)
	public ModelAndView editjobseeker() {
		ModelAndView modelandview = new ModelAndView();
		List<StudentBean> sbean = service.update(Id);
		for (StudentBean sBean : sbean) {
			modelandview.setViewName("jobseekerUpdate");
			modelandview.addObject("studentbean", sBean);
		}
		modelandview.addObject("stbean", sbean);
		return modelandview;
	}

	@RequestMapping(value = "/jobseekeredited", method = RequestMethod.POST)
	public ModelAndView jobseekereditedsuccessful(@Valid @ModelAttribute("studentbean") StudentBean sbean,
			BindingResult b) throws Exception {
		ModelAndView modelandview = new ModelAndView();
		int id = service.getId();
		String s = service.edited(sbean, id);
		modelandview.addObject("jobseeker", new JobSeekersBean());
		modelandview.setViewName("index");
		return modelandview;
	}

}
