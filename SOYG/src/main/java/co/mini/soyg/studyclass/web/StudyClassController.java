package co.mini.soyg.studyclass.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mini.soyg.studyclass.service.StudyClassService;
import co.mini.soyg.studyclass.serviceImpl.StudyClassServiceImpl;

@Controller
public class StudyClassController {

	@Autowired
	private StudyClassServiceImpl service;
	
	@Autowired
	private StudyClassService dao;
	
//	@RequestMapping("")
	
}
