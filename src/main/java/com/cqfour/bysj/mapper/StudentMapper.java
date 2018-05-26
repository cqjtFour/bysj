package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.JiuYeLv;
import com.cqfour.bysj.bean.Student;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Mapper
@Component(value = "studentMapper")
public interface StudentMapper extends MyMapper<Student> {
    /**
     * 模糊查询
     * @param param
     * @return
     */
    List<Student> queryStudentByInput(@Param("param") String param);

    /**
     * 条件查询
     * @param stuName
     * @param stuNo
     * @return
     */
    List<Student> querySomeStudent(@Param("stuName")String stuName,@Param("stuNo")String stuNo);

    @Select("select * from t_xsb where dlzh=#{0}")
    Student selectOneStudent(String dlzh);

    @Insert("insert into t_xsb (xh,xsxm,dlzh,zybh) values (#{xh},#{xsxm},#{dlzh},#{zybh})")
    int insertStudent(@Param("xh") String xh,@Param("xsxm") String xsxm,@Param("dlzh") String dlzh,@Param("zybh") Integer zybh);


    /**
     * 得到所有的毕业生签约信息
     * @return
     */
    List<Student> selectBigZaHui();

    /**
     * 通过届数查询学生
     * @param js
     * @return
     */
    @Select("SELECT * from t_qyb,t_xsb,t_zyb,t_xyb where t_qyb.XH = t_xsb.XH\n" +
            "    and t_xsb.ZYBH=t_zyb.ZYBH and t_zyb.XYBH = t_xyb.XYBH and bysjs=#{js} ")
    @ResultMap("BaseResultMapWithDisciplineAndSign")
    List<Student> selectStuentByJs(@Param("js") String js);

    @Select("select t_xyb.XYMC,COUNT(t_xyb.XYBH) as num from t_xsb,t_zyb,t_xyb where t_xsb.ZYBH = t_zyb.ZYBH and t_zyb.XYBH = t_xyb.XYBH and bysjs=#{js} GROUP BY t_xyb.XYBH")
    List<JiuYeLv> selectPart(@Param("js") String js);

    @Select("SELECT XYMC ,COUNT(t_qyb.XH) as num from t_qyb,t_xsb,t_zyb,t_xyb where t_qyb.XH = t_xsb.XH\n" +
            "    and t_xsb.ZYBH=t_zyb.ZYBH and t_zyb.XYBH = t_xyb.XYBH and bysjs=#{js} and sfqdsf = 1 GROUP BY XYMC")
    List<JiuYeLv> selectPartqy(@Param("js") String js);

    List<Student> queryStudentWithSign(@Param("year") String year,
                                       @Param("collega") Integer collega,
                                       @Param("sure") Integer sure);
}