package com.planit.backend.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PartnerController {

	@RequestMapping("/Planit/Admin/Event/List.do")
	public String eventList()throws Exception{
		return "partner/event/EventList.tiles";
	}
	
	/******************기업회원 리스트 ********************/
	@RequestMapping("/Planit/Admin/partner/List.do")
	public String partnerList()throws Exception{
		return "partner/partnerinfo/PartnerList.tiles";
	}
	
	@RequestMapping("/Planit/Admin/partner/View.do")
	public String partnerView()throws Exception{
		return "partner/partnerinfo/PartnerView.tiles";
	}
	
}
