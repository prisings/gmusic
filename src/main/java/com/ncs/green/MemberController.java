package com.ncs.green;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {

	@RequestMapping(value = "/checkterm")
	public ModelAndView checkterm(ModelAndView mv, HttpServletRequest request) {
		mv.setViewName("member/checkterm");
		return mv;
		
	}
	@RequestMapping(value = "/memberjoinp")
	public ModelAndView memberjoin(ModelAndView mv, HttpServletRequest request) {
		mv.setViewName("member/memberjoinp");
		return mv;
		
	}
}
