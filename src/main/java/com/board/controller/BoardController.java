package com.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	
	@RequestMapping("/Board/List")
	public String list() {
		return "board/list";
	}
}
