package com.jooBang.project.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jooBang.project.model.MemberVO;
import com.jooBang.project.model.WishListVO;
import com.jooBang.project.service.MemberService;
import com.jooBang.project.service.WishListService;

@Controller
public class MemberController {
	@Autowired
	MemberService service;
	
	@Autowired
	private WishListService wishservice;

	// 비밀번호 암호화 한 경우의 로그인 처리 방식
	@ResponseBody
	@RequestMapping("/member/eqlogin")
	public String loginCheck(@RequestParam HashMap<String, Object> param, HttpSession session) {
		// 로그인 체크 결과
		String result = service.loginCheck(param);

		// 아이디와 비밀번호 일치하면 (로그인 성공하면) 서비스에서 success 반환
		if (result.equals("success")) {
			// 로그인 성공하면 세션 변수 지정
						String id=(String)param.get("id");
						session.setAttribute("sid", id);
						String nick=service.getName(id);
						session.setAttribute("nick", nick);
			// 최근 본 방 테이블 초기화
			wishservice.recentAllDelete();
			
		}
		
		return result;
	}

	// 이용약관
	@RequestMapping("/member/TOS")
	public String TOS() {

		return "member/TOS";
	}

	// 로그인
	@RequestMapping("/member/login")
	public String login() {

		return "member/login";
	}

	// 회원가입
	@RequestMapping("/member/signUp")
	public String signUp() {

		return "member/signUp";
	}

	// 아이디 찾은 후 로그인
	@RequestMapping("/member/searchAfterLoginForm")
	public String searchAfterLoginForm(@RequestParam String memId, Model model) {
		model.addAttribute("memId", memId);

		return "member/login";
	}

	// 로그아웃
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		// 세션 무효화
		session.invalidate();
		return "redirect:/"; // index로 포워딩 -> HomeController에 있는 @RequestMapping("/")
	}

	// 회원가입
	@RequestMapping("/member/insert")
	public String insert(MemberVO vo) {
		service.insertMember(vo);

		return "member/login"; // 회원가입 후 로그인 폼으로 이동
	}

	
	// 아이디 중복 체크
		@ResponseBody
		@RequestMapping("/member/memIdCheck")
		public String memIdCheck(@RequestParam("memId") String memId) {
			// 서비스 호출하고 DB에 memId 존재하면 memId받고, 존재하지 않으면 null받음
			String memId_result = service.memIdCheck(memId);

			String result = "use";
			if (memId_result != null) { // 존재 한다면
				result = "no_use";
			}

			return result;
		}
	
	// 아이디 찾기 폼 이동
	@RequestMapping("/member/findIdForm")
	public String findIdForm() {

		return "member/findIdForm";
	}

	// 아이디 찾기위해 이름 이메일 입력 확인
	@ResponseBody
	@RequestMapping("/member/findId")
	public String findId(@RequestParam("memName") String memName, @RequestParam("memEmail") String memEmail,
			Model model) {

		String result = service.findId(memName, memEmail);
		model.addAttribute("id", result);

		if (result != null) {
			return result;
		} else {
			result = "fail";
		return result;
		}

	}

	// 비밀번호 찾기 폼 이동
	@RequestMapping("/member/findPwdForm")
	public String findPwdForm() {

		return "member/findPwdForm";
	}

	// 비밀번호 찾기 위해 이름이랑 이메일 입력 확인
	@RequestMapping("/member/findPwd")
	public String findPwd(@RequestParam("findPwdName") String memName, @RequestParam("findPwdEmail") String memEmail,
			Model model) {

		String result = service.findPwd(memName, memEmail);

		if (result != null) {
			if (result.equals(memName)) {
				return "member/findPwdComplete";
			} else {
				return "redirect:/member/login";
			}
		} else {
			return "redirect:/member/findPwdForm";
		}
	}

	// 비밀번호 변경 (업데이트)
	@RequestMapping("/member/changePwd")
	public String changePwd(MemberVO vo) {

		service.changePwd(vo);

		return "member/login"; // 로그인 폼으로 이동
	}
        
}
