package com.example.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.jdbc.SQL;

import com.example.model.City;

@Mapper
public interface CityMapper {
	
	@Select("select * from city")
	List<City> selectAll(); 
	
	@Select("select code as \"code\", name as \"name\"  from country") // 소문자로 바꾼 이유는 EL에서 접근할 때 소문자를 주로 쓰기 때문에.
	List<Map<String, Object>> selectCountryCodes(); // key(String)이 컬럼명 value(Object)는 값.
	
	
	@Select("select * from city where country_code =#{code, jdbcType=VARCHAR}")
	List<City> selectByCode(String code);

	@SelectProvider(type = SqlProvider.class, method = "searchAll")
	List<City> searchAll(String code,Long population);
	public static class SqlProvider {
		
		public static String searchAll(String code,Long population) {
			
			var s = new SQL();
			s.SELECT("*");
			s.FROM("city");
			
			if(code !=null && !code.trim().equals("")) {
				s.WHERE(String.format("country_code='%s'", code));
			}
			if(population != null) {
				
				s.WHERE(String.format("population >= %d", population));
			}
			return s.toString();
		}
	}
	
	
	
}



//select * from city;
//
//select * from city where country_code ='KOR';

//select * from city where population >=9000000;
//
//select * from city where country_code ='KOR' and population >=9000000;


//--1. 모두 조회 over3000
//select * from city; 
//
//--2. 조건조회(city만 조회) 276
//select * from city WHERE name LIKE '%A%'; 
//
//--3.조건조회(city를 조회하고 결과 안에서 구역을 재조회)16
//select * from city WHERE name LIKE '%K%' and district LIKE '%M%';