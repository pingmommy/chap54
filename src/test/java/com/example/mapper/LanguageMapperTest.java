package com.example.mapper;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class LanguageMapperTest {

	@Autowired
	LanguageMapper mapper;
	
	@Test
	void test1() {
		var list = mapper.selectAll();
		assertThat(list).isNotEmpty();
		System.out.println(list);
	}
}
