package com.board.menus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.menus.domain.MenuDTO;
import com.board.menus.mapper.MenuMapper;

@Controller
public class MenuController {
	
	@Autowired
	private  MenuMapper   menuMapper;
	
	@RequestMapping("/Menus/List")
	public  String  list( Model model ) {
		
		List<MenuDTO>  menuList   = menuMapper.getMenuList();
		System.out.println( menuList );
		
		//                 key(jstl)   value
		model.addAttribute("menuList", menuList);   
		
		return "menus/list";
		// src/main/webapp/WEB-INF/views/menus/list.jsp  
	}
	
	@RequestMapping("/Menus/WriteForm")
	public  String  writeForm() {
		return "menus/write";
	}
	
	@RequestMapping("/Menus/Write")
	public  String  write( MenuDTO menuDTO, Model model ) {
		
		menuMapper.insertMenu( menuDTO );
		
		/*
		List<MenuDTO> menuList = menuMapper.getMenuList();		
		model.addAttribute("menuList", menuList);		
		return "menus/list";   // rd.forward(request, response)
		*/
		return   "redirect:/Menus/List"; // response.sendRedirect()
	}
	
	// http://localhost:9090/Menus/Delete?userid=SKY
	@RequestMapping("/Menus/Delete")
	public  String  delete( MenuDTO menuDTO  ) {
		
		// System.out.println( menuDTO );
		menuMapper.deleteMenu( menuDTO  );
		
		return  "redirect:/Menus/List";
	}
	
	// http://localhost:9090/Menus/UpdateForm?userid=SHIN
	@RequestMapping("/Menus/UpdateForm")
	public  String   updateForm( MenuDTO menuDTO, Model model   ) {
		
		// 넘어온 정보(?userid=SHIN)확인
		// MenuDTO [userid=SHIN, passwd=null, email=null, upoint=0]
		System.out.println("넘어온 정보:" + menuDTO );
		
		// 넘어온 정보로 수정할 정보를 조회
		MenuDTO  menu = menuMapper.getMenu( menuDTO );
		System.out.println( "조회한 정보:" +  menu );
		
		// 조회한 정보를 update.jsp 에 넘긴다
		model.addAttribute("menu", menu);
		
		return  "menus/update";  // menus/update.jsp
	}
	
	// http://localhost:9090/Menus/Update
	@RequestMapping("/Menus/Update")
	public  String   update( MenuDTO  menuDTO ) {
		// 넘어온 정보확인
		System.out.println("넘어온 정보:" + menuDTO );
		
		// 수정하러 가기
		menuMapper.update( menuDTO );		
		
		return "redirect:/Menus/List";
	}
	
	
}




