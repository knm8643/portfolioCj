package com.mycompany.myapp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("other")
public class OtherController {

	@Autowired
	private HttpSession session;
	
	@RequestMapping("others")
    public String Made() {
		System.out.println("홈에서 other호출 확인");
		return "/other/others";
	}
}
