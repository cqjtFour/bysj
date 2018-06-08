package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Discipline;
import com.cqfour.bysj.mapper.DisciplineMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DisciplineService {

    @Autowired
    private DisciplineMapper disciplineMapper;

    public List<Discipline> selectAllWithFaculty(){
        return disciplineMapper.selectAllWithFaculty();
    }

    /**
     * 添加专业
     * @return
     */
    public int insertPro(String zymc,Integer xybh){
        return disciplineMapper.insertPro(zymc,xybh);
    }

    /**
     * 删除专业
     * @param zybh
     * @return
     */
    public int deletePro(Integer zybh){
        return disciplineMapper.deletePro(zybh);
    }

    /**
     * 查找某个专业
     * @param i
     * @return
     */
    public Discipline selectOneProfession(int i) {
        return disciplineMapper.selectOneProfession(i);
    }

    /**
     * 更新专业信息
     * @param i
     * @param proName
     * @param i1
     */
    public void updateProfession(int i, String proName, int i1) {
        disciplineMapper.updateProfession(i,proName,i1);
    }

    public List<Discipline> selectSomeProfession(String inputData) {
        return disciplineMapper.selectSomeProfession(inputData);
    }
}
