package com.planit.backend.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminUserController {
	
	// 일반 사용자 정보 관리 화면
	@RequestMapping("/Planit/Admin/AdminUserInfo.do")
	public String userInfo()throws Exception{
		return "/user/info/AdminUserInfo.tiles";
	}
	// 사용자 즐겨찾기 
	@RequestMapping("/Planit/Admin/AdminFavorites.do")
	public String userFavorite()throws Exception{
		return "/user/favorite/AdminFavorites.tiles";
	}
	
	@RequestMapping("/Planit/Admin/AdminPlan.do")
	public String userPlanner()throws Exception{
		return "/user/planner/AdminPlanner.tiles";
	}
	
	@RequestMapping("/Planit/Admin/Book/List.do")
	public String userReservation()throws Exception{
		return "/user/reservation/AdminReservation.tiles";
	}
	
	@RequestMapping("/Planit/Admin/AdminReview.do")
	public String userReview()throws Exception{
		return "/user/review/AdminReview.tiles";
	}
}
