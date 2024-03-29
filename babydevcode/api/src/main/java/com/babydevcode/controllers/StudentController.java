package com.babydevcode.controllers;

import com.babydevcode.entitys.Student;
import com.babydevcode.services.impl.StudentServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RequiredArgsConstructor
@RestController
public class StudentController {

    private final StudentServiceImpl studentService;

    @GetMapping("/students")
    public ResponseEntity<Object> findAllStudents(
            @RequestParam(defaultValue = "0") Integer page,
            @RequestParam(defaultValue = "10") Integer size,
            @RequestParam(value = "name", required = false, defaultValue = "") String name
    ) {
        return studentService.getStudents(page, size, name);
    }

    @DeleteMapping("/students/{id}")
    public ResponseEntity<String> deleteStudent(@PathVariable(name = "id") Long id) {
        return studentService.deleteStudent(id);
    }

    @PostMapping("/student")
    public ResponseEntity<String> createStudent(@RequestBody Student newStudent) {
        return studentService.createStudent(newStudent);
    }
}
