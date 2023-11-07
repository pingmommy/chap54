package com.example;

import java.util.ArrayList;
import java.util.Collections;

public class PresentationExample {

	public static void main(String[] args) throws InterruptedException {
		var students = new ArrayList<String>();
		/*
		 * students.add("김은비"); students.add("김현민"); students.add("이소리");
		 * students.add("전준호"); students.add("정문섭"); students.add("조아라");
		 * students.add("김영재"); students.add("양현식"); students.add("이은지");
		 * students.add("유현석"); students.add("하종범"); students.add("오영창");
		 * students.add("유희석"); students.add("임유빈");
		 */
		students.add("white");
		students.add("Black");
		students.add("red");
		students.add("green");
		students.add("yellow");
		students.add("blue");
		students.add("magenta");
		students.add("cyan");
		
		for (var i=0; i<5; i++) {
			Collections.shuffle(students);
			System.out.print(".");
			Thread.sleep(1000);
		}
		
		System.out.println();

		for (var i=0; i<students.size(); i++) {
			System.out.printf("%2d. %s\n", i+1, students.get(i));
			Thread.sleep(1000);
		}

	}

}
