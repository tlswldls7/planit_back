package com.planit.backend.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PhotobookController {

	@RequestMapping("/planit/photobook/List.do")
	public String photobookList()throws Exception{
		return "photobook/PhotobookList.tiles";
	}
}
