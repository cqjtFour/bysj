package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Apply;
import com.cqfour.bysj.bean.Employers;
import com.cqfour.bysj.bean.Job;
import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.service.EmployerService;
import com.cqfour.bysj.service.JobService;
import com.cqfour.bysj.util.DateUtil;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by a on 2018/5/15.
 */
@Controller
public class JobSearchController {

	@Autowired
	private JobService jobService;

	@Autowired
	private EmployerService employerService;

	/**
	 * 获得岗位信息
	 * @return
	 */
	@RequestMapping(value = "/jobSearch",method = RequestMethod.GET)
	public String getAllJob(@RequestParam(value = "page", defaultValue = "1")Integer page, HttpServletRequest request){
		System.out.println("当前页面"+page );
		PageInfo<Job> pageInfo = jobService.getAllJob(page, 10);
		request.setAttribute("pageInfo",pageInfo);

		return "/WEB-INF/main/jobsearch.jsp";
	}

	/**
	 *分页
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/getAllJobToPage",method = RequestMethod.GET)
	@ResponseBody
	public Message getAllJobToPage(@RequestParam(value = "page", defaultValue = "1")Integer page, HttpServletRequest request){

		PageInfo<Job> pageInfo = jobService.getAllJob(page, 10);
		request.setAttribute("pageInfo",pageInfo);

		Message message=new Message();
		message.setStatus("success");
		return message;
	}

	/**
	 * 根据岗位编号获取岗位详情,跳转到详情页面
	 * @param zpgwbh
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/jobDetail")
	public String jobDetail(@RequestParam("zpgwbh") Integer zpgwbh, HttpServletRequest request){
		Job job=jobService.jobDetail(zpgwbh);
		Employers employers=employerService.getEmployersById(job.getYrdwxxbbh());
		request.setAttribute("job",job);
		request.setAttribute("employers",employers);
		return "/WEB-INF/main/jobdetail.jsp";
	}

	/**
	 *搜索结果
	 * @param gwmc
	 * @param gwlx
	 * @param gzdd
	 * @param xqzy
	 * @return
	 */
	@RequestMapping(value = "/searchResult")
	public String searchResult(@RequestParam(value = "gwmc") String gwmc,
								@RequestParam(value = "gwlx") String gwlx,
								@RequestParam(value = "gzdd") String gzdd,
								@RequestParam(value = "xqzy") String xqzy,
								@RequestParam(value = "page", defaultValue = "1")Integer page,
								HttpServletRequest request
	){
		Job job=new Job();
		job.setMc(gwmc);
		job.setGwlx(gwlx);
		job.setDd(gzdd);
		job.setZy(xqzy);
		PageInfo<Job> pageInfo=jobService.searchJob(page,10,job);
		request.setAttribute("pageInfo1",pageInfo);
		request.setAttribute("gwmc",gwmc);
		request.setAttribute("gwlx",gwlx);
		request.setAttribute("gzdd",gzdd);
		request.setAttribute("xqzy",xqzy);

		return   "/WEB-INF/main/searchRes.jsp";
	}

	/**
	 * 搜索结果分页
	 * @param gwmc
	 * @param gwlx
	 * @param gzdd
	 * @param xqzy
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "searchResultToPage")
	@ResponseBody
	public Message searchResultToPage(@RequestParam(value = "gwmc") String gwmc,
									  @RequestParam(value = "gwlx") String gwlx,
									  @RequestParam(value = "gzdd") String gzdd,
									  @RequestParam(value = "xqzy") String xqzy,
									  @RequestParam(value = "page", defaultValue = "1")Integer page,
									  HttpServletRequest request){
		Job job=new Job();
		job.setMc(gwmc);
		job.setGwlx(gwlx);
		job.setDd(gzdd);
		job.setZy(xqzy);
		PageInfo<Job> pageInfo=jobService.searchJob(page,10,job);
		//返回搜索
		request.setAttribute("gwmc",gwmc);
		request.setAttribute("gwlx",gwlx);
		request.setAttribute("gzdd",gzdd);
		request.setAttribute("xqzy",xqzy);
		request.setAttribute("pageInfo1",pageInfo);

		Message message=new Message();
		message.setStatus("success");
		return message;
	}

	/**
	 * 投递简历
	 * @return
	 */
	@RequestMapping(value = "/applyJob",method = RequestMethod.POST)
	@ResponseBody
	public Message applyJob(@RequestParam(value = "gwbh") Integer gwbh,
							@RequestParam(value = "xsxh") String xsxh
							){
		Apply apply=new Apply();
		apply.setXh(xsxh);
		apply.setZpgwbh(gwbh);
		apply.setYpsj(DateUtil.getStringDate());
		apply.setCkzt((short)0);
        apply.setShzt((short)0);
		jobService.applyJob(apply);

		Message msg=new Message();
		msg.setStatus("success");
		return msg;
	}


}
