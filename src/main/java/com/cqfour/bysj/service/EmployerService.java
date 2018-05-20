package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Employers;
import com.cqfour.bysj.bean.EmployersInfoCheck;
import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.mapper.EmployersInfoCheckMapper;
import com.cqfour.bysj.mapper.EmployersMapper;
import com.cqfour.bysj.mapper.UserMapper;
import com.cqfour.bysj.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by a on 2018/5/12.
 */
@Service
public class EmployerService {

	@Autowired
	private EmployersMapper employersMapper;

	@Autowired
	private UserMapper userMapper;

	@Autowired
	private EmployersInfoCheckMapper employersInfoCheckMapper;

	/**
	 * 单位注册
	 * @param employer
	 * @param user
	 */
	@Transactional(propagation = Propagation.REQUIRED)
	public void register(Employers employer,User user){

			//设置帐号状态
			user.setZhzt(2);
			//设置用户角色
			user.setJsbh(4);
			//写入用户信息
			userMapper.insert(user);

			//设置用人单位外键
			employer.setDlzh(user.getDlzh());
			//写入用人单位信息
			employersMapper.insertReturn(employer);


			//写入审核表,审核表对象
			EmployersInfoCheck employersInfoCheck=new EmployersInfoCheck();
			//单位编号
			employersInfoCheck.setYrdwxxbbh(employer.getYrdwxxbbh());

		    //时间
			String time= DateUtil.getStringDate();
			employersInfoCheck.setTjsj(time);
			//状态为未审核
			short i=0;
			employersInfoCheck.setShzt(i);
			employersInfoCheckMapper.insert(employersInfoCheck);

	}

	/**
	 * 根据主键查询用人单位
	 * @param yrdwxxbbh
	 * @return
	 */
	public Employers getEmployersById(Integer yrdwxxbbh){
		Employers employers=employersMapper.selectByPrimaryKey(yrdwxxbbh);
		return  employers;
	}
}
