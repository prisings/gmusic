package com.ncs.green;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class GmusicController {

	@RequestMapping(value = "/termsp")
	public ModelAndView termsp(ModelAndView mv, HttpServletRequest request) {
		mv.setViewName("project/termsp");
		return mv;
	}
	@RequestMapping(value = "/introcompany")
	public ModelAndView introcompany(ModelAndView mv, HttpServletRequest request) {
		mv.setViewName("project/introcompany");
		return mv;
	}
	@RequestMapping(value = "/privacy")
	public ModelAndView privacy(ModelAndView mv, HttpServletRequest request) {
		mv.setViewName("project/privacy");
		return mv;
	}
	@RequestMapping(value = "/youth")
	public ModelAndView youth(ModelAndView mv, HttpServletRequest request) {
		mv.setViewName("project/youth");
		return mv;
	}

}
