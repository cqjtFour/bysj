package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Student;
import com.cqfour.bysj.mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {

    @Autowired
    private StudentMapper studentMapper;

    /**
     * 返回所有的学生
     * @return
     */
    public List<Student> getAllStudent(){
        return studentMapper.selectAll();
    }
}
