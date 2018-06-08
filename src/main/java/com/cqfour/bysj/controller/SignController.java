package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.Sign;
import com.cqfour.bysj.bean.Student;
import com.cqfour.bysj.service.SignService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by a on 2018/5/23.
 */
@Controller
public class SignController {

	@Autowired
	private SignService signService;

	@RequestMapping("/contractManage")
	public String contractManage(@RequestParam(value = "page", defaultValue = "1")Integer page,
								 @RequestParam(value = "xh",defaultValue ="") String xh,
								 HttpServletRequest request){
		PageInfo<Sign> pageInfo=signService.getSignInfoList(page,6,xh);
		request.setAttribute("pageInfo",pageInfo);
		request.setAttribute("xh",xh);
		return "/WEB-INF/main/contractManage.jsp";
	}

	/**
	 * 分页
	 * @param page
	 * @param xh
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/contractManageToPage",method = RequestMethod.GET)
	@ResponseBody
	public Message contractManageToPage(@RequestParam(value = "page", defaultValue = "1")Integer page,
										@RequestParam(value = "xh",defaultValue ="") String xh,
										HttpServletRequest request){
		PageInfo<Sign> pageInfo=signService.getSignInfoList(page,6,xh);
		request.setAttribute("pageInfo",pageInfo);
		request.setAttribute("xh",xh);
		Message message=new Message();
		message.setStatus("success");
		return message;
	}

	@RequestMapping(value = "/contractManage/validateModalStudent",method = RequestMethod.GET)
	@ResponseBody
	public Student validateModalStudent(@RequestParam(value = "xsxh")String  xsxh){

		Student student=new Student();
		if (signService.validateStudent(xsxh)){
			student=signService.getOneStudent(xsxh);
		}
		return student;
	}

	@RequestMapping(value = "/contractManage/validateModalEmployer",method = RequestMethod.GET)
	@ResponseBody
	public Message validateModalEmployer(@RequestParam(value = "dwmc")String  dwmc){

		Message msg=new Message();
		if(signService.validateEmployer(dwmc)){
			msg.setStatus("success");
		}else {
			msg.setStatus("fail");
		}
		return msg;
	}

	@RequestMapping(value = "/contractManage/saveSignInfo",method = RequestMethod.POST)
	@ResponseBody
	public Message saveSignInfo(@RequestParam(value = "xsxh")String  xsxh,@RequestParam(value = "dwmc")String  dwmc){
		Message message=new Message();
		signService.saveSignInfo(dwmc,xsxh);
		message.setStatus("success");
		return message;
	}
}
