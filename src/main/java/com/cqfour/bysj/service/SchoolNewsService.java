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
     * 查询前七条专场招聘信息
     *
     * @return
     */
    public List<SchoolNews> getSpecialEmployee() {
        return schoolNewsMapper.selectSpecailEmployee();
    }

    /**
     * 查询前九条社会招聘信息
     *
     * @return
     */
    public List<SchoolNews> selectSocialEmployee() {
        return schoolNewsMapper.selectSocialEmployee();
    }

    /**
     * 查询前九条双选会信息
     *
     * @return
     */
    public List<SchoolNews> selectDoubleMeeting() {
        return schoolNewsMapper.selectDoubleMeeting();
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
        List<EmploymentDepartment> employmentDepartments = employmentDepartmentMapper.selectAll();
        List<SchoolNews> schoolNewsList = schoolNewsMapper.selectAllAdvice();
        for (EmploymentDepartment employmentDepartment: employmentDepartments) {
            for(SchoolNews schoolNews : schoolNewsList){
                if (schoolNews.getZgbh().equals(employmentDepartment.getZgbh())){
                    schoolNews.setEmploymentDepartment(employmentDepartment);
                }
            }
        }
        return schoolNewsList;
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

    public List<SchoolNews> selectTest(){
        List<SchoolNews> schoolNewsList = schoolNewsMapper.selectTest();
        System.out.println(schoolNewsList.size());
        return schoolNewsList;
    }
}
