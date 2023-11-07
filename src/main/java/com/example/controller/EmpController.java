package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.mapper.DeptMapper;
import com.example.mapper.EmpMapper;
import com.example.model.Emp;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/emp")
public class EmpController {
	@Autowired 
	EmpMapper empmapper;
	
	@Autowired
	DeptMapper deptmapper;
	
	@GetMapping("/list")
	void selectAll(Integer deptno, String search, HttpServletRequest request) {
	
		System.out.println(deptno); //null로 들어옴. 
		System.out.println(search); // search는 string이어서 널스트링으로 값이 들어온다. 
		
		
	var list = empmapper.selectBySearch(deptno, search);
	
	request.setAttribute("list", list);
	
	var depts = deptmapper.selectAll();
	
	request.setAttribute("depts", depts);
		
	}
 // view를 리턴하지 않으면(void) 스프링이 알아서 요청한 루트를 뷰로 리턴한다.  
	
	@GetMapping("/sal")
	void selectGrade(Model model) {
		var list = empmapper.selectGrade();
		
		model.addAttribute("list",list);
		
		var sal = empmapper.selectGradelist();
		model.addAttribute("sal", sal);
	}
}


//10	경리부
//20	인사부
//30	영업부
//40	전산부