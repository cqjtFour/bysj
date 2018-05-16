package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.SchoolNews;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "schoolNewsMapper")
public interface SchoolNewsMapper extends MyMapper<SchoolNews> {

    /**
     * 查出浏览次数前五的数据
     * @return
     */
    List<SchoolNews> selectAdviceByLlcs();
//
    /**
     * 查询前九条通知公告信息
     * @return
     */
    List<SchoolNews> selectAdvice();

    /**
     * 查出所有的通知公告
     * @return
     */
    List<SchoolNews> selectAllAdvice();
    /**
     * 查出最新的前五条通知
     * @return
     */
    List<SchoolNews> selectAdviceByDate();

    /**
     * 查询前九条就业指导信息
     * @return
     */
    List<SchoolNews> selectEmploymentGuidance();
    /**
     * 查出所有的就业指导信息
     * @return
     */
    List<SchoolNews> selectAllEmploymentGuidance();

    /**
     * 查出最新的前五条就业指导
     * @return
     */
    List<SchoolNews> selectEmploymentGuidanceByDate();

    /**
     * 查出浏览次数前五就业指导的数据
     * @return
     */
    List<SchoolNews> selectEmploymentGuidanceByLlcs();


    /**
     * 查询前九条就业政策信息
     * @return
     */
    List<SchoolNews> selectEmploymentPocily();

    /**
     * 查出所有的就业政策信息
     * @return
     */
    List<SchoolNews> selectAllEmploymentPolicy();

    /**
     * 查出最新的前五条就业政策
     * @return
     */
    List<SchoolNews> selectEmploymentPolicyByDate();

    /**
     * 查出浏览次数前五就业政策的数据
     * @return
     */
    List<SchoolNews> selectEmploymentPolicyByLlcs();



}