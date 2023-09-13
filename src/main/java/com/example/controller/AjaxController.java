package com.example.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import util.Alpha;

@Controller
public class AjaxController {

	@GetMapping("/rect")
	void ajax(Model model) {
	
		var rect = new ArrayList<ArrayList<Alpha>>();
		
		for(int i =0; i<20;i++) {
			rect.add(new ArrayList<Alpha>());
			for(int j=0;j<40;j++) {
				rect.get(i).add(new Alpha());
			}
		}
		
	
		model.addAttribute("surface", rect);
		
		
		
	}
	
	
// @ResponseBody를 주면 뷰로 포워드되지 않고 컨트롤러라 요청받고 응답하고 끝난다. 리턴값이 JSON문자열로 바뀌어서 클라언트로 리턴됨. 
	
	@GetMapping("/alpha")
	@ResponseBody
	Alpha generator() throws InterruptedException {
		System.out.println("generator..");
		
		return new Alpha();
	}
	
	
	
	
	
	
//	@Autowired
//	ObjectMapper json;
//	String generator1() throws JsonProcessingException {
//		return json.writeValueAsString(new Alpha());
//	}
	
	
	//=>RESTFull 서비스(뷰는 건너뛰고 순수 JSON문자열로 클라이언트한테 리턴함.)
	//JavaScriptObjectNotation
}
