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

    /**
    * 根据登录账号返回对应的学生
    *@return
     */
    public Student getStudent(String dlzh){ return  studentMapper.selectByPrimaryKey(dlzh);}

    /**
     * 创建学生简历
     *
     * */
    public int updateStudent(Student student){
        return  studentMapper.updateByPrimaryKeySelective(student);
    }

    /**
     * 获得学生姓名
     */
    public  String getStudentName(String xh){ return  studentMapper.getStudentName(xh);}



}
