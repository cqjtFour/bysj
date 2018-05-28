package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.EmployersInfoCheck;
import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.service.EmployersInfoCheckService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;

/**
 * 单位资格审核
 * Created by a on 2018/5/21.
 */
@Controller
public class EmployersInfoCheckController {

	@Autowired
	private EmployersInfoCheckService employersInfoCheckService;

	/**
	 * 获得单位资格审核信息
	 * @param page
	 * @param shzt
	 * @param request
	 * @return
	 */
	@RequestMapping("/checkRecord")
	public String checkRecord(@RequestParam(value = "page", defaultValue = "1")Integer page,
							  @RequestParam(value = "shzt",defaultValue = "-1") Short shzt,
							  HttpServletRequest request){

		PageInfo<EmployersInfoCheck> pageInfo=employersInfoCheckService.getCheckList(page,5,shzt);
		request.setAttribute("pageInfo",pageInfo);
		request.setAttribute("shzt",shzt);
		return "/WEB-INF/main/checkRecord.jsp";
	}

	/**
	 * 单位资格审核分页处理
	 * @param page
	 * @param shzt
	 * @param request
	 * @return
	 */
	@RequestMapping("/checkRecordToPage")
	@ResponseBody
	public Message checkRecordToPage(@RequestParam(value = "page", defaultValue = "1")Integer page,
									 @RequestParam(value = "shzt",defaultValue = "-1") Short shzt,
									 HttpServletRequest request){
		PageInfo<EmployersInfoCheck> pageInfo=employersInfoCheckService.getCheckList(page,5,shzt);
		request.setAttribute("pageInfo",pageInfo);
		request.setAttribute("shzt",shzt);

		Message msg=new Message();
		msg.setStatus("success");
		return msg;
	}

	/**
	 * 修改审核状态
	 * @param yrdwxxshbbh
	 * @param shzt
	 * @param dwdlzh
	 * @param request
	 * @return
	 */
	@RequestMapping("/checkRecord/changeStatus")
	@ResponseBody
	public Message changeStatus(@RequestParam(value = "yrdwxxshbbh") Integer yrdwxxshbbh,
								@RequestParam(value = "shzt") short shzt,
								@RequestParam(value = "dwdlzh") String dwdlzh,
								HttpServletRequest request){
		User user=(User) request.getSession().getAttribute("user");
		String zgdlzh=user.getDlzh();
		System.out.println("zgdlzh:"+zgdlzh);
		Message msg=new Message();
		try{
			employersInfoCheckService.changeShzt(yrdwxxshbbh,shzt,dwdlzh,zgdlzh);
			msg.setStatus("success");
		}catch (Exception e){
			msg.setStatus("fail");
		}

		return msg;
	}
}
