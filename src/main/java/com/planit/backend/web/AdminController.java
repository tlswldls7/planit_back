package com.planit.backend.web;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.planit.backend.service.AdminDTO;
import com.planit.backend.service.AdminService;

@Controller
public class AdminController {
	
	@Resource(name="adminService")
	private AdminService service;
	
	@RequestMapping("/Planit/admin/login.do")
	public String login()throws Exception{
		return "admin/Login";// tiles적용안함
	}
	
	@RequestMapping(value="/planit/admin/loginprocess.do", method=RequestMethod.POST)
	public String loginProcess(@RequestParam Map map,   /// id. pwd
								HttpSession session, // 로그인처리
								Model model  // 에러발생시 다시 보여주기 위해서
								)throws Exception{
		//  디비 연결을 했을 시에 
		//boolean flag=service.isMember(map);
		
		// 디비연결 안했을 경우 
		boolean flag=true;
		
		if(!flag) {
			model.addAttribute("loginError", "아이디 비번 불일치"); // 비회원
			return "admin/Login.tiles";
		}
		else {
			session.setAttribute("id", map.get("id"));  //회원
			return "analysis/Dashboard.tiles";
		}
	}
	
	@RequestMapping("/Planit/admin/logout.do")
	public String logout(HttpSession session)throws Exception{
		session.invalidate();
		return "forward:/";  //home으로 이동 
	}
	
	//dashboard로 이동 
	@RequestMapping("/Planit/admin/Dashboard.do")
	public String dashboard(HttpSession session, Model model)throws Exception{
		Map map=new HashMap();
		map.put("id", session.getAttribute("id"));
		// 서비스호출] 회원정보를 받아온다
		//디비연결 한 경우 
		//AdminDTO record=service.selectOne(map);
		////////디비연결 안한 경우//////// 
		AdminDTO record=new AdminDTO();
		record.setId(session.getAttribute("id").toString());
		record.setName("정현선");
		record.setPosition("팀장");
		///////////////////////////////
		// 데이터저장] position=팀장인 사람일 경우 master
		if(record.getPosition().equals("팀장")) {
			session.setAttribute("master", record.getId());
			session.setAttribute("user", record);
		}
		// 뷰정보반환] 
		return "analysis/Dashboard.tiles";
	}
	
	//profile로 이동
	@RequestMapping("/Planit/admin/Profile.do")
	public String profile()throws Exception{
		// 서비스 호출] 직원의 정보를 받아온다.
		// 데이터저장]
		// 뷰정보반환]
		return "admin/Profile.tiles";
	}
	
	//employee로 이동 
	@RequestMapping("/Planit/admin/Employee.do")
	public String employee()throws Exception{
		// 서비스 호출] 직원의 리스트를 받아온다.
		// 데이터저장] 
		// 뷰정보반환]
		return "admin/Employee.tiles";
	}
	
	
	//통계 상세 페이지 /Planit/Analysis/Details.do
	@RequestMapping("/Planit/Analysis/Details.do")
	public String details()throws Exception{
		//통계 상세 페이지..?
		return "analysis/Details.tiles";
	}
}
