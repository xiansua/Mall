package com.situ.layoa.student.controller;

import java.io.Serializable;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.situ.layoa.student.domain.Student;
@RestController
@RequestMapping("/student")
public class StudentController implements Serializable{
	private static final long serialVersionUID = 1L;
	public StudentController() {
		System.out.println("这是StudentController的构造函数！");
	}
	@PostMapping
	public Long saveStudent(Student student) {
		System.out.println(student);
		return 1L;
	}
	
}
