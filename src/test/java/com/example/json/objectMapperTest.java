package com.example.json;

import java.util.ArrayList;
import java.util.HashMap;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import util.Alpha;
import util.Color;

public class objectMapperTest {

	@Autowired
	 ObjectMapper mapper = new ObjectMapper();
	@Test
	void stringify() throws JsonProcessingException {
	  
	  var alpha = new Alpha();
	  
	  System.out.println(alpha); // -> 이 명령문의 수행결과로 나온 문자열은 데이터로 교환할 수 있는 문자열은 아니다. 
	  
	  var json = mapper.writeValueAsString(alpha); //-> 알파객체를 스트링으로 만든 json스트링을 반환한다. 
	
	 System.out.println(json);
	}
	
	@Test
	void parse() throws JsonMappingException, JsonProcessingException {
		var json = """
				{
					"line":200,
					"column":400,
					"fg":"Black",
					"bg":"Red",
					"ch":"X"
				}
				""";
		
		var alpha = mapper.readValue(json, Alpha.class);
		
		System.out.println(alpha.getLine());
		System.out.println(alpha.toString());
	}
	
	@Test
	void array() throws JsonProcessingException {
		int[] arr = {10, 20, 30};
		
		System.out.println(mapper.writeValueAsString(arr));
		
		Alpha[] arr2 = {new Alpha(), new Alpha()};
		
		System.out.println(mapper.writeValueAsString(arr2));
		
		
		var list = new ArrayList<Alpha>();
		list.add(new Alpha());
		list.add(new Alpha());
		
		System.out.println(mapper.writeValueAsString(list));
		
		var map = new HashMap<String, Object>();
		map.put("line", 200);
		map.put("column", 400);
		map.put("fg", Color.Black);
		map.put("Bg", Color.Red);
		map.put("ch", 'A');

		System.out.println(mapper.writeValueAsString(map));

	}
}


// ObjectMapper - 자바객체를 json문자열로 바꾸는 객체. 
// 형식화된 데이터교환수단 : xml, json
// Spring에는 잭슨이라는 라이브러리가 내장되어 있음. 잭슨이 알아서 JSON문자열을 맵핑한다. 