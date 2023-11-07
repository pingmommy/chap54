package com.example.mapper;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.model.Salgrade;



@SpringBootTest
public class EmpMapperTest {

	@Autowired
	EmpMapper mapper;
	
	
	@Test
	void test1() {
		var list = mapper.selectAll();
		assertThat(list).isNotEmpty();
		System.out.println(list);
	}
	
	@Test
	void test2() {
		var list = mapper.selectGrade();
		assertThat(list).isNotEmpty();
		System.out.println(list);
				
	}
	
	@Test
	void test3() {
		var list =  mapper.selectGradelist();
		assertThat(list).isNotEmpty();
		System.out.println(list);
	}
}
