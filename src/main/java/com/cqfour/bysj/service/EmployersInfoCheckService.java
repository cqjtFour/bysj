package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.EmployersInfoCheck;
import com.cqfour.bysj.bean.EmploymentDepartment;
import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.mapper.EmployersInfoCheckMapper;
import com.cqfour.bysj.mapper.EmploymentDepartmentMapper;
import com.cqfour.bysj.mapper.UserMapper;
import com.cqfour.bysj.util.DateUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by a on 2018/5/21.
 */
@Service
public class EmployersInfoCheckService {


	@Autowired
	private EmployersInfoCheckMapper employersInfoCheckMapper;

	@Autowired
	private EmploymentDepartmentMapper employmentDepartmentMapper;

	@Autowired
	private UserMapper userMapper;

	/**
	 * 根据审核状态获取分页列表
	 * @param shzk
	 * @return
	 */
	public PageInfo<EmployersInfoCheck> getCheckList(Integer pageNum, Integer pageSize, Short shzk){
		//PageHelper分页
		PageHelper.startPage(pageNum,pageSize);
		PageHelper.orderBy("TJSJ desc");

		List<EmployersInfoCheck> e=employersInfoCheckMapper.getlist(shzk);
		PageInfo<EmployersInfoCheck> pageInfo=new PageInfo<>(e);
		return pageInfo;
	}


	/**
	 * 审核并修改账号状态
	 * @param yrdwxxshbbh
	 * @param shzt
	 * @param dwdlzh
	 * @param zgdlzh
	 * @return
	 */
	@Transactional(propagation = Propagation.REQUIRED)
	public void  changeShzt(Integer yrdwxxshbbh,short shzt,String dwdlzh,String zgdlzh){
		//就业处对象,根据登录账号找职工编号
		EmploymentDepartment e1=new EmploymentDepartment();
		e1.setDlzh(zgdlzh);
		EmploymentDepartment employmentDepartment=employmentDepartmentMapper.selectOne(e1);
		//审核对象
		EmployersInfoCheck e=new EmployersInfoCheck();
		e.setYrdwxxshbbh(yrdwxxshbbh);
		e.setShzt(shzt);
		e.setShsj(DateUtil.getStringDate());
		e.setZgbh(employmentDepartment.getZgbh());
		//用户对象
		User user=new User();
		user.setDlzh(dwdlzh);
		if(shzt==1){
			user.setZhzt(0);
		}else {
			user.setZhzt(2);
		}
		//进行数据库操作
		employersInfoCheckMapper.updateByPrimaryKeySelective(e);
		userMapper.updateByPrimaryKeySelective(user);

	}
}
