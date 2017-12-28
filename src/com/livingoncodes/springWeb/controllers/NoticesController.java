package com.livingoncodes.springWeb.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.livingoncodes.springWeb.dao.Notice;
import com.livingoncodes.springWeb.service.NoticesService;

@Controller
public class NoticesController {

	public NoticesService noticesService;

	@Autowired
	public void setNoticesService(NoticesService noticesService) {
		this.noticesService = noticesService;
	}

	@RequestMapping("/notices")
	public String showNotices(Model model) {
		
		

		List<Notice> notices = noticesService.getNotices();

		model.addAttribute("notices", notices);

		return "notices";
	}

	@RequestMapping("/createnotice")
	public String createNotice(Model model) {

		
		model.addAttribute(new Notice());
		return "createnotice";
	}

	@RequestMapping(value = "/docreate", method = RequestMethod.POST)
	public String doCreate(Model model, @Valid Notice notice, BindingResult result) {
		
		if (result.hasErrors()) {
			
			 return "createnotice";
		} 
		
		noticesService.create(notice);

		return "noticecreated";
	}

}
