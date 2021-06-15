package co.mini.soyg.studyclass.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mini.soyg.study.service.StudyService;
import co.mini.soyg.studyclass.serviceImpl.StudyServiceImpl;

@Controller
public class StudyController {

	@Autowired
	private StudyServiceImpl service;
	
	@Autowired
	private StudyService dao;
	
//	@RequestMapping("")
	
}
