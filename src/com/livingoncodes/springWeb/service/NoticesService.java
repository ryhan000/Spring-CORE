package com.livingoncodes.springWeb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.livingoncodes.springWeb.dao.Notice;
import com.livingoncodes.springWeb.dao.NoticesDAO;

@Service("noticesService")
public class NoticesService {

	private NoticesDAO noticesDAO;

	@Autowired
	public void setNoticesDAO(NoticesDAO noticesDAO) {
		this.noticesDAO = noticesDAO;
	}

	public List<Notice> getNotices() {

		return noticesDAO.getNotices();

	}

	public void create(Notice notice) {
		noticesDAO.create(notice);
		
	}


}
