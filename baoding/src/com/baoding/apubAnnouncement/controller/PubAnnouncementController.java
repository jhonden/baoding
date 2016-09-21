package com.baoding.apubAnnouncement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baoding.common.BaseController;


@Controller
@RequestMapping("/pub_announcement/")
public class PubAnnouncementController  extends BaseController{

	public PubAnnouncementController() {
		VIEW_PATH = "a_pub_announcement/";
	}
	
}
