package com.cqfour.bysj.mapper;

import com.cqfour.bysj.bean.Employers;
import com.cqfour.bysj.util.MyMapper;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "employersMapper")
public interface EmployersMapper extends MyMapper<Employers> {

	/**
	 * 插入返回主键的值
	 * @param employers
	 * @return
	 */
	int insertReturn(Employers employers);

	/**
	 *
	 * @param YRDWXXBBH
	 * @return
	 */
	@Select("select * from t_yrdwb where YRDWXXBBH=#{YRDWXXBBH}")
	@Results({
			@Result(property = "YRDWXXBBH",column = "YRDWXXBBH")
	})
	public Employers findById(@Param(value = "YRDWXXBBH") Integer YRDWXXBBH);


    @Select("select * from t_yrdwb where DLZH = #{0}")
    Employers getOneEmployerByDLZH(String dlzh);

    String  getEmployerName(String dlzh);

    Employers getEmployer(String dlzh);

}