package com.example.mapper;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import org.apache.ibatis.jdbc.SQL;
import org.junit.jupiter.api.Test;
import org.mybatis.spring.MyBatisSystemException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class CityMapperTest {
	
	@Autowired
	CityMapper mapper;
	
	@Test
	void test1() {
		
		var list = mapper.selectAll();
		
		assertThat(list).isNotEmpty();
		assertThat(list).isNotNull();
		assertThat(list.size()).isGreaterThan(3000);
		
	}
	
	@Test
	void selectCountryCodes() {
		var list =  mapper.selectCountryCodes();
		list.forEach(m -> System.out.println(m));
		//list.forEach(m -> System.out.println(m.get("code")));// 키로 작용하는 컬럼명이 대문자로 와서 결과값이 예상한 대로 안 나옴. 
	}
	
	@Test
	void selectByCode() {
		var list = mapper.selectByCode("");
		assertThat(list).isEmpty();
		
		list = mapper.selectByCode("KOR");
		list.forEach(c -> System.out.println(c));
		
		
		//assertThatThrownBy(()->{mapper.selectByCode(null);}).isInstanceOf(MyBatisSystemException.class);
		list=mapper.selectByCode(null);
		assertThat(list).isEmpty();
	}

	@Test
	void searchAll1() {
		System.out.println("1.null");
		System.out.println(searchSQL(null, null));
		
		System.out.println("2. \"\"null");
		System.out.println(searchSQL("", null));
		
		System.out.println("3. kor");
		System.out.println(searchSQL("KOR", null));
		
		System.out.println("4. kor");
		System.out.println(searchSQL(null,1000L));
		
		System.out.println("5. kor");
		System.out.println(searchSQL("KOR", 1000L));
	}
	
	String searchSQL(String code,Long population) {
		var s = new SQL();
		
		s. SELECT("*");
		s.FROM("city");
		
		if(code !=null && !code.trim().equals("")) {
	    	s.WHERE(String.format("country_code='%s'", code));
		}
		if(population != null) {
			
			s.WHERE(String.format("population >= %d", population));
		}
		
		return s.toString();
	}
	

    @Test
     void searchAll2() {
    	 var list = mapper.searchAll(null, null);
    	 assertThat(list.size()).isEqualTo(4079);
    	 list = mapper.searchAll("   ", null);
    	 assertThat(list.size()).isEqualTo(4079);

    	 list = mapper.searchAll("KOR", null);
    	 list = mapper.searchAll(null,9000000L);
    	 list = mapper.searchAll("KOR",9000000L);
    	 
    }

}






//--1. 모두 조회 over3000
//select * from city; 
//
//--2. 조건조회(city만 조회) 276
//select * from city WHERE name LIKE '%A%'; 
//
//--3.조건조회(city를 조회하고 결과 안에서 구역을 재조회)16
//select * from city WHERE name LIKE '%K%' and district LIKE '%M%';