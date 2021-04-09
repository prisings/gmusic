package com.ncs.green;

import java.io.File;
<<<<<<< HEAD
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import oracle.sql.ARRAY;
import service.MusicService;
import vo.MusicVO;

@Controller
public class GmusicController {

	@Autowired
	MusicService service;

	// musiclist
	@RequestMapping(value = "/musiclist")
	public ModelAndView musiclist(ModelAndView mv) {

		List<MusicVO> list = service.selectList();

		if (list != null) {
			mv.addObject("Banana", list);
		}
		mv.setViewName("musicview/musiclist");
		return mv;
	}

	// playlist
	@RequestMapping(value = "/playlist")
	public ModelAndView playlist(HttpServletRequest request, ModelAndView mv) {

		System.out.println("넘아와?");
		MusicVO mv1 = new MusicVO();
		MusicVO mv2 = new MusicVO();

		String a = request.getParameter("snum");
		String[] b = a.split(",");
		int[] c = new int[b.length];

		for (int i = 0; i < b.length; i++) {
			c[i] = Integer.parseInt(b[i]);
		}

		for (int i : c) {
			System.out.println(i);
		}
		mv1.setSnum(c[0]);
		mv1 = service.selectMusic(mv1);
		List<MusicVO> list = new ArrayList<MusicVO>();
		for (int i = 0; i < c.length; i++) {
			mv2.setSnum(c[i]);
			list.add(service.selectMusic(mv2));
		}
		if (mv1 != null) {
			mv.addObject("Apple", mv1);
			mv.setViewName("musicview/playlist");
		}
		mv.addObject("Banana", list);

		return mv;
	}

	// ** Image DownLoad
	@RequestMapping(value = "/dnload")
	public ModelAndView dnload(ModelAndView mv, @RequestParam("dnfile") String dnfile) {
		dnfile = "D:/Jeong/gproject/src/main/webapp/" + dnfile;
		System.out.println("** dnfile => " + dnfile);
		File file = new File(dnfile);

		mv.addObject("downloadFile", file);
		mv.setViewName("download");

		// 일반적인 경우 views/download.jsp 를 찾음, 그러나 이 경우에는 아님

		// viewresolver bean 체크하기 기본적으로 viewresolver
		// => servlet-context.xzml 에 설정하는 view 클래스 (DownloadView.java) 의
		// id 와 동일 해야함.
		return mv;

		/*
		 * 위 50~51 행은 아래처럼 작성할 수도 있다. return new ModelAndView("download",
		 * "downloadFile", file);
		 * 
		 * => 생성자 참고 public ModelAndView(View view, String modelName, Object
		 * modelObject) { this.view = view; addObject(modelName, modelObject); }
		 */
	} // dnload
=======
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
import service.MusicService;
import vo.MusicVO;

@Log4j
@Controller
public class GmusicController {
	
	@Autowired
	MusicService service;

	//musictest
		@RequestMapping(value = "/musictest")
		public ModelAndView musictest(ModelAndView mv) {

			List<MusicVO> list = service.selectList();

			if ( list != null) { mv.addObject("Banana", list); }
			mv.setViewName("test/musictest");
			return mv;
		}

	// ** Image DownLoad
	   @RequestMapping(value = "/dnload")
	   public ModelAndView dnload(ModelAndView mv, @RequestParam("dnfile") String dnfile) {
		   dnfile = "D:/Jeong/gproject/src/main/webapp/" + dnfile;
	      System.out.println("** dnfile => " + dnfile);
	      File file = new File(dnfile);

	      mv.addObject("downloadFile", file);
	      mv.setViewName("download");
	      
	      // 일반적인 경우 views/download.jsp 를 찾음, 그러나 이 경우에는 아님
	      
	      // viewresolver bean 체크하기 기본적으로 viewresolver
	      // => servlet-context.xzml 에 설정하는 view 클래스 (DownloadView.java) 의
	      // id 와 동일 해야함.
	      return mv;

	      /*
	       * 위 50~51 행은 아래처럼 작성할 수도 있다. return new ModelAndView("download",
	       * "downloadFile", file);
	       * 
	       * => 생성자 참고 public ModelAndView(View view, String modelName, Object
	       * modelObject) { this.view = view; addObject(modelName, modelObject); }
	       */
	   } // dnload   
>>>>>>> refs/remotes/origin/master
}
