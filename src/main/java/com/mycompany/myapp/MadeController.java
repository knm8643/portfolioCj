package com.mycompany.myapp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Made")
public class MadeController {

	@Autowired
	private HttpSession session;
	
	@RequestMapping("mades")
    public String Made() {
		System.out.println("홈에서 Mades호출 확인");
		return "/made/mades";
	}
	
	@RequestMapping("calendarDetail")
	public String calendar(String title, String end, String start, String club_cl_name) {
		return "/made/calendarDetail";
	}
}
