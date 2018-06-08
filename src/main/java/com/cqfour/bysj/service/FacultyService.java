package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Faculty;
import com.cqfour.bysj.mapper.FacultyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FacultyService {

    @Autowired
    private FacultyMapper facultyMapper;

    /**
     * 得到所有的学院
     * @return
     */
    public List<Faculty> getAllFaculty(){
        return facultyMapper.selectAll();
    }

    /**
     * 插入一条数据
     * @param faculty
     * @return
     */
    public int insert(Faculty faculty){
        return facultyMapper.insert(faculty);
    }

    /**
     * 删除
     * @param i
     */
    public void deleteFaculty(int i) {
        facultyMapper.deleteByPrimaryKey(i);
    }

    public Faculty selectOneByXyh(int i) {
       return facultyMapper.selectByPrimaryKey(i);
    }

    /**
     * 更新
     */
    public void updateFaculty(Faculty faculty) {
        facultyMapper.updateByPrimaryKey(faculty);
    }
}
