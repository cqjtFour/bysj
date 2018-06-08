package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Employers;
import com.cqfour.bysj.bean.Sign;
import com.cqfour.bysj.bean.Student;
import com.cqfour.bysj.mapper.EmployersMapper;
import com.cqfour.bysj.mapper.SignMapper;
import com.cqfour.bysj.mapper.StudentMapper;
import com.cqfour.bysj.util.DateUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by a on 2018/5/23.
 */
@Service
public class SignService {

	@Autowired
	private SignMapper signMapper;

	@Autowired
	private StudentMapper studentMapper;

	@Autowired
	private EmployersMapper employersMapper;

	public PageInfo<Sign> getSignInfoList(Integer pageNum, Integer pageSize,String xh){
		//PageHelper分页
		PageHelper.startPage(pageNum,pageSize);

		List<Sign> signs=signMapper.getAllSignInfo(xh);
		PageInfo<Sign> pageInfo=new PageInfo<>(signs);
		return pageInfo;
	}

	public boolean validateStudent(String xsxh){

		return studentMapper.existsWithPrimaryKey(xsxh);
	}

	public boolean validateEmployer(String dwmc){
		Employers employer=new Employers();
		employer.setDwmc(dwmc);

			Employers employer1=employersMapper.selectOne(employer);
			try{
				employer1.getDwmc();
				return true;
			}catch (Exception e){
				return false;
			}

	}

	public Student getOneStudent(String xsxh){
		Student s=studentMapper.selectStudentWithDis(xsxh);
		return s;
	}

	public void saveSignInfo(String dwmc,String xsxh){
		//单位编号
		Employers e=new Employers();
		e.setDwmc(dwmc);
		Employers employer=employersMapper.selectOne(e);
		Integer id=employer.getYrdwxxbbh();

		Sign s=new Sign();
		s.setXh(xsxh);
		s.setYrdwxxbbh(id);
		s.setSfqdsf((short)1);
		s.setQdsj(DateUtil.getStringDateShort());

		signMapper.insert(s);

	}
}
