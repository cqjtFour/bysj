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
     * 查询前九条专场招聘信息
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX='专场招聘' LIMIT 0,9")
    List<SchoolNews> selectSpecailEmployee();

    /**
     * 查询前九条社会招聘信息
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX='社会招聘' LIMIT 0,9")
    List<SchoolNews> selectSocialEmployee();

    /**
     * 查询前九条双选会信息
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX='双选会' LIMIT 0,9")
    List<SchoolNews> selectDoubleMeeting();

    /**
     * 查询前九条就业政策信息
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX='就业政策' LIMIT 0,9")
    List<SchoolNews> selectEmploymentPocily();

    /**
     * 查询前九条就业指导信息
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX='就业指导' LIMIT 0,9")
    List<SchoolNews> selectEmploymentGuidance();

    /**
     * 查出浏览次数前五的数据
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX = '通知公告' ORDER BY LLCS DESC limit 0,5")
    List<SchoolNews> selectAdviceByLlcs();
//
    /**
     * 查询前九条通知公告信息
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX='通知公告' LIMIT 0,9")
    List<SchoolNews> selectAdvice();

    /**
     * 查出所有的通知公告
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX='通知公告'")
    List<SchoolNews> selectAllAdvice();

    /**
     * 查出最新的前五条通知
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX = '通知公告' ORDER BY XXFBSJ DESC LIMIT 0,5")
    List<SchoolNews> selectAdviceByDate();

    /**
     * 查出所有的就业指导信息
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX='就业指导' ")
    List<SchoolNews> selectAllEmploymentGuidance();

    /**
     * 查出最新的前五条就业指导
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX = '就业指导' ORDER BY XXFBSJ DESC LIMIT 0,5")
    List<SchoolNews> selectEmploymentGuidanceByDate();

    /**
     * 查出浏览次数前五就业指导的数据
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX = '就业指导' ORDER BY LLCS DESC LIMIT 0,5")
    List<SchoolNews> selectEmploymentGuidanceByLlcs();

    /**
     * 查出所有的就业指导信息
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX='就业政策' ")
    List<SchoolNews> selectAllEmploymentPolicy();

    /**
     * 查出最新的前五条就业指导
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX = '就业政策' ORDER BY XXFBSJ DESC LIMIT 0,5")
    List<SchoolNews> selectEmploymentPolicyByDate();

    /**
     * 查出浏览次数前五就业指导的数据
     * @return
     */
    @Select("SELECT * from t_xxxxfbb where XXLX = '就业政策' ORDER BY LLCS DESC LIMIT 0,5")
    List<SchoolNews> selectEmploymentPolicyByLlcs();

    List<SchoolNews> selectTest();

}