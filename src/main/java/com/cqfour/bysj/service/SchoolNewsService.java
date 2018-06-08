package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.EmploymentDepartment;
import com.cqfour.bysj.bean.SchoolNews;
import com.cqfour.bysj.mapper.EmploymentDepartmentMapper;
import com.cqfour.bysj.mapper.SchoolNewsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SchoolNewsService {

    @Autowired
    private SchoolNewsMapper schoolNewsMapper;

    @Autowired
    private EmploymentDepartmentMapper employmentDepartmentMapper;


    /**
     * 查出所有的发布信息
     * @return
     */
    public List<SchoolNews> selectAll(){
        return schoolNewsMapper.selectAll();
    }

    /**
     * 查询前九条就业政策信息
     *
     * @return
     */
    public List<SchoolNews> selectEmploymentPocily() {
        return schoolNewsMapper.selectEmploymentPocily();
    }


    /**
     * 查询前九条就业指导信息
     *
     * @return
     */
    public List<SchoolNews> selectEmploymentGuidance() {
        return schoolNewsMapper.selectEmploymentGuidance();
    }

    /**
     * 查询前九条通知公告
     *
     * @return
     */
    public List<SchoolNews> selectAdvice() {
        return schoolNewsMapper.selectAdvice();
    }

    /**
     * 查询出所有的通知公告
     *
     * @return
     */
    public List<SchoolNews> selectAllAdvice() {
        return schoolNewsMapper.selectAllAdvice();
    }

    /**
     * 查出浏览次数前五的数据
     *
     * @return
     */
    public List<SchoolNews> selectAdivceByllcu() {
        return schoolNewsMapper.selectAdviceByLlcs();
    }

    /**
     * 查出最新的前五条通知
     *
     * @return
     */
    public List<SchoolNews> selectAdviceByDate() {
        return schoolNewsMapper.selectAdviceByDate();
    }

    /**
     * 查出所有的就业指导信息
     *
     * @return
     */
    public List<SchoolNews> selectAllEmploymentGuidance() {
        return schoolNewsMapper.selectAllEmploymentGuidance();
    }

    /**
     * 查出最新的前五条就业指导
     *
     * @return
     */
    public List<SchoolNews> selectEmploymentGuidanceByDate() {
        return schoolNewsMapper.selectEmploymentGuidanceByDate();
    }

    /**
     * 查出浏览次数前五的数据
     *
     * @return
     */
    public List<SchoolNews> selectEmploymentGuidanceByLlcs() {
        return schoolNewsMapper.selectEmploymentGuidanceByLlcs();
    }

    /**
     * 查出所有的就业指导信息
     *
     * @return
     */
    public List<SchoolNews> selectAllEmploymentPolicy() {
        return schoolNewsMapper.selectAllEmploymentPolicy();
    }

    /**
     * 查出最新的前五条就业指导
     *
     * @return
     */
    public List<SchoolNews> selectEmploymentPolicyByDate() {
        return schoolNewsMapper.selectEmploymentPolicyByDate();
    }

    /**
     * 查出浏览次数前五的数据
     *
     * @return
     */
    public List<SchoolNews> selectEmploymentPolicyByLlcs() {
        return schoolNewsMapper.selectEmploymentPolicyByLlcs();
    }


    public List<SchoolNews> getAllInfo(){
        return schoolNewsMapper.getAllInfo();
    }

    public void insertSchoolNews(String xxbt, String xxlx, String xxzw, int i) {
        EmploymentDepartment employmentDepartment = employmentDepartmentMapper.selectEmpByZGBH(i);
        System.out.println(employmentDepartment.toString());
        schoolNewsMapper.insertSchoolNews(xxbt,xxlx,xxzw,employmentDepartment.getZgbh());
    }

    public void deleteMenu(int i) {
        schoolNewsMapper.deleteByPrimaryKey(i);
    }

    /**
     * 返回某种信息类型的所有信息
     * @param kind
     * @return
     */
    public List<SchoolNews> getAllInfoByKind(String kind) {
        return schoolNewsMapper.getKindOfXxlx(kind);
    }
}
