package com.livingoncodes.springWeb.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.livingoncodes.springWeb.dao.Notice;
import com.livingoncodes.springWeb.dao.User;
import com.livingoncodes.springWeb.service.UsersService;

@Controller
public class Login {
	@Autowired
	private UsersService usersService;

	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}

	@RequestMapping("/login")
	public String showlogin() {

		return "login";
	}
	
	@RequestMapping("/test")
	public String showTest() {
		
		return "test";
	}
	@RequestMapping("/loggedout")
	public String showloggOut() {
		
		return "loggedout";
	}
	

	@RequestMapping("/admin")
	public String  showAdmin(Model model) {
		
		List<User> users = usersService.getAllUsers();
		
		model.addAttribute("users", users);
		
		return "admin";
	}

	@RequestMapping("/newaccount")
	public String showNewAccount(Model model) {
		model.addAttribute("user", new User());
		return "newaccount";
	}

	@RequestMapping("/createaccount")
	public String createAccount() {

		return "accountcreated";
	}

	@RequestMapping(value = "/createaccount", method = RequestMethod.POST)
	public String doCreate(@Valid User user, BindingResult result) {

		if (result.hasErrors()) {

			return "newaccount";
		}

		user.setAuthority("user");
		user.setEnabled(true);
	//	usersService.create(user);
		
		
		
		if(usersService.exists(user.getUsername())) {
			result.rejectValue("username", "DuplicateKey.user.username", "This username already exists, please choose different name.");
			return "newaccount";
		}
		
		
		return "accountcreated";
	}
}
