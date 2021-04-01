package com.ncs.green;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import service.GmemberService;
import vo.GmemberVO;

@Controller
public class MemberController {

	@Autowired
	GmemberService service;

	@Autowired
	PasswordEncoder passwordEncoder;

	@RequestMapping(value = "/checkterm")
	public ModelAndView checkterm(ModelAndView mv, HttpServletRequest request) {
		mv.setViewName("member/checkterm");
		return mv;

	}

	@RequestMapping(value = "/memberjoinp")
	public ModelAndView memberjoinp(ModelAndView mv) {
		// mv.setViewName("member/joinForm2"); // ui구현 Test
		mv.setViewName("member/memberjoinp");
		return mv;
	} // memberjoinp

	@RequestMapping(value = "/memberjoin")
	public ModelAndView memberjoin(HttpServletRequest request, ModelAndView mv, GmemberVO vo) throws IOException {

		// ** Uploadfile (Image) 처리
		// => MultipartFile 타입의 uploadfilef 의 정보에서 화일명을 get,
		// => upload된 image 를 서버의 정해진 폴더 (물리적위치)에 저장 하고, -> file1
		// => 이 위치에 대한 정보를 table에 저장 (vo에 set) -> file2

		// ** 실제화일을 보관할 물리적 위치 찾기
		// 1) 현재 작업중인 이클립스 기준 (배포전, ver01)
		// => D:/jaepil/MyWork/Spring02/src/main/webapp/resources/uploadImage
		// 2) 배포후에는 서버 내에서의 위치가 됨.
		// => getRealPath: D:\jaepil\IDESet\apache-tomcat-9.0.41\webapps\Spring03\
		// 필요한 위치:
		// D:/jaepil/IDESet/apache-tomcat-9.0.41/webapps/Spring03/resources/uploadImage

		// ** 경로
		String realPath = request.getRealPath("/");
		System.out.println("realPath_ver01 :" + realPath);
		// realPath_ver01->
		// D:\jaepil\MyWork\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Spring02\
		// 실습1) ver01
		// realPath =
		// "D:/jaepil/MyWork/Spring03/src/main/webapp/resources/uploadImage/";

		// 실습2) ver02 (배포환경 or 개발환경)
		if (realPath.contains(".eclipse.")) {
			realPath = "D:/jaepil/MyWork/gproject/src/main/webapp/resources/uploadImage/";
		} else {
			realPath += "resources\\uploadImage\\";
		}

		// ** 폴더 만들기 (File 클래스활용)
		// => 저장 경로에 폴더가 없는 경우 만들어 준다
		File f1 = new File(realPath); // 매개변수로 지정된 정보에 대한 File 객체 생성
		System.out.println(" 생성직후 f1=> " + f1);
		if (!f1.exists())
			f1.mkdir();
		// realPath 디렉터리가 존재하는지 검사 (uploadImage 폴더 존재 확인)
		// => 존재하지 않으면 디렉토리 생성

		// ** MultipartFile
		// => 업로드한 파일에 대한 모든 정보를 가지고 있으며 이의 처리를 위한 메서드를 제공한다.
		// String getOriginalFilename(), void transferTo(File destFile),
		// boolean isEmpty()
		MultipartFile uploadfilef = null;
		// => 기본 Image 설정
		String file1, file2 = "resources/uploadImage/basicman1.jpg";
		// 전송된 Image 가 있는지 확인
		uploadfilef = vo.getUploadfilef();
		System.out.println("vo.getUploadfilef() => " + vo.getUploadfilef());
		if (uploadfilef != null && !uploadfilef.isEmpty()) {
			file1 = realPath + uploadfilef.getOriginalFilename();
			// 드라이브에 저장되는 실제 경로와 화일명
			uploadfilef.transferTo(new File(file1)); // file 붙여넣기
			file2 = "resources/uploadImage/" + uploadfilef.getOriginalFilename();
		}
		vo.setUploadfile(file2);
		// *******************************************
		System.out.println("vo.getId() => " + vo.getId());

		// ** Transaction Test
		/*
		 * 1. dependency 확인 <!-- AspectJ --> <dependency> <groupId>org.aspectj</groupId>
		 * <artifactId>aspectjrt</artifactId> <version>${org.aspectj-version}</version>
		 * </dependency> <!-- AspectJ Weaver --> <dependency>
		 * <groupId>org.aspectj</groupId> <artifactId>aspectjweaver</artifactId>
		 * <version>${org.aspectj-version}</version> </dependency>
		 * 
		 * 2. servlet-context.xml AOP 설정
		 *
		 * 3. Rollback Test 3.1) Aop xml 적용전 => insert1 은 입력되고, insert2 에서 500 오류 발생
		 * 3.2) Aop xml 적용후 => insert2 에서 오류발생시 모두 Rollback 되어 insert1, insert2 모두 입력 안됨
		 */
		// 3.1) Transaction 적용전 : 동일자료 2번 insert
		// => 첫번째는 입력완료 되고, 두번째 자료입력시 Key중복 오류발생
		// 3.2) Transaction 적용후 : 동일자료 2번 insert
		// => 첫번째는 입력완료 되고, 두번째 자료입력시 Key중복 오류발생 하지만,
		// rollback 되어 둘다 입력 안됨

		// ** Exception Test : DuplicateKeyException , SQLException
		// cnt = service.insert(vo);

		// ** PasswordEncoder 적용
		// => 다이제스트 생성 & vo에 set
		vo.setPassword(passwordEncoder.encode(vo.getPassword()));

		// ** 이메일 통합 처리
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String email3 = request.getParameter("email3");

		if (email2 != null && email2.length() > 0) {
			vo.setEmail(email1 + "@" + email2);
		} else {
			vo.setEmail(email1 + "@" + email3);
		}

		// ** 휴대폰 통합 처리
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");

		vo.setPhone(phone1 + phone2 + phone3);

		int cnt = service.insert(vo);
		if (cnt > 0) {
			// 가입성공 -> 로그인 유도 메시지 출력 : loginForm.jsp
			mv.addObject("message", " 회원 가입 성공 !!! 로그인 후 이용하세요 ~~");
			mv.setViewName("member/memberloginp");
		} else {
			// 가입실패 -> 재가입 유도 메시지 출력 : joinForm.jsp
			mv.addObject("message", " 회원 가입 실패 !!! 다시 하세요 ~~");
			mv.setViewName("member/memberjoinp");
		}
		return mv;
	} // memberjoin

	@RequestMapping(value = "/loginp")
	public ModelAndView loginp(ModelAndView mv, HttpServletRequest request) {
		mv.setViewName("member/memberloginp");
		return mv;
	}

	@RequestMapping(value = "/myinfochangep")
	public ModelAndView myinfochangep(ModelAndView mv, HttpServletRequest request, GmemberVO vo) {
		mv.setViewName("member/myinfochangep");
		return mv;
	}// myinfochangep

	@RequestMapping(value = "/myinfochange")
	public ModelAndView myinfochange(ModelAndView mv, HttpServletRequest request, GmemberVO vo) throws UnsupportedEncodingException {
		String message = null;
		if (service.update(vo) > 0) {
			// 수정성공 -> message, List출력 (memberList.jsp)
			// url 로 전달되는 한글 message 처리 위한 encoding
			message = URLEncoder.encode("~~ 정보수정 성공 ~~", "UTF-8");
			mv.setViewName("redirect:mlist?message=" + message); // sendRedirect
		} else {
			// 수정실패 -> message, Ddetail (mdetail)
			message = URLEncoder.encode("~~ 정보수정 실패 !!! 다시 하세요 ~~", "UTF-8");
			mv.setViewName("redirect:mdetail?id=" + vo.getId() + "&message=" + message + "&jcode=U"); // sendRedirect
		}
		return mv;
	}

}
