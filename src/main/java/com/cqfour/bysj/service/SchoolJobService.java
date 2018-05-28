package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.EmploymentDepartment;
import com.cqfour.bysj.bean.ReserveInfo;
import com.cqfour.bysj.bean.ReserveInfoJob;
import com.cqfour.bysj.bean.SchoolJob;
import com.cqfour.bysj.mapper.EmploymentDepartmentMapper;
import com.cqfour.bysj.mapper.ReserveInfoJobMapper;
import com.cqfour.bysj.mapper.SchoolJobMapper;
import com.cqfour.bysj.util.DateUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by a on 2018/5/22.
 */
@Service
public class SchoolJobService {

	@Autowired
	private SchoolJobMapper schoolJobMapper;

	@Autowired
	private ReserveInfoJobMapper reserveInfoJobMapper;

	@Autowired
	private EmploymentDepartmentMapper employmentDepartmentMapper;

	/**
	 * 根据状态获取分页列表
	 * @param pageNum
	 * @param pageSize
	 * @param yyzt
	 * @return
	 */
	public PageInfo<SchoolJob> getResInfoList(Integer pageNum, Integer pageSize, Short yyzt){
		//PageHelper分页
		PageHelper.startPage(pageNum,pageSize);

		List<SchoolJob> schoolJobs=schoolJobMapper.getSchoolJobList(yyzt);
		PageInfo<SchoolJob> pageInfo=new PageInfo<>(schoolJobs);
		return pageInfo;

	}

	/**
	 *
	 * @param xyzpyybbh
	 * @return
	 */
	public List<ReserveInfoJob> getResJobList(Integer xyzpyybbh){
		List<ReserveInfoJob> reserveInfoJobs=reserveInfoJobMapper.getAllReserveInfoJobBySome(xyzpyybbh);
		return  reserveInfoJobs;
	}

	public void changeYyzt(String zgdlzh,short yyzt,Integer xyzpyybbh,String dfnr){
		//就业处对象,根据登录账号找职工编号
		EmploymentDepartment e1=new EmploymentDepartment();
		e1.setDlzh(zgdlzh);
		EmploymentDepartment employmentDepartment=employmentDepartmentMapper.selectOne(e1);
		//预约对象
		SchoolJob schoolJob=new SchoolJob();
		schoolJob.setXyzpyybbh(xyzpyybbh);
		schoolJob.setZgbh(employmentDepartment.getZgbh());
		schoolJob.setDfsj(DateUtil.getStringDate());
		schoolJob.setDfnr(dfnr);
		schoolJob.setYyzt(yyzt);
		schoolJobMapper.updateByPrimaryKeySelective(schoolJob);
	}
}
