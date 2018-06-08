package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.ReserveInfoJob;
import com.cqfour.bysj.bean.SchoolJob;
import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.service.SchoolJobService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by a on 2018/5/22.
 */
@Controller
public class SchoolJobController {

	@Autowired
	private SchoolJobService schoolJobService;

	@RequestMapping("/resApplication")
	public String resApplication(@RequestParam(value = "page", defaultValue = "1")Integer page,
								 @RequestParam(value = "yyzt",defaultValue = "-1") Short yyzt,
								 HttpServletRequest request){
		PageInfo<SchoolJob> pageInfo=schoolJobService.getResInfoList(page,6,yyzt);
		request.setAttribute("pageInfo",pageInfo);
		request.setAttribute("yyzt",yyzt);
		return "/WEB-INF/main/resApplication.jsp";
	}

	@RequestMapping("/resApplicationToPage")
	@ResponseBody
	public Message resApplicationToPage(@RequestParam(value = "page", defaultValue = "1")Integer page,
								 @RequestParam(value = "yyzt",defaultValue = "-1") Short yyzt,
								 HttpServletRequest request){

		PageInfo<SchoolJob> pageInfo=schoolJobService.getResInfoList(page,6,yyzt);
		request.setAttribute("pageInfo",pageInfo);
		request.setAttribute("yyzt",yyzt);

		Message msg=new Message();
		msg.setStatus("success");
		return  msg;
	}

	/**
	 * 根据编号回传数据
	 * @param xyzpyybbh
	 * @return
	 */
	@RequestMapping(value = "/resApplication/getResJobList",method = RequestMethod.GET)
	@ResponseBody
	public List<ReserveInfoJob> getResJobList(@RequestParam(value = "xyzpyybbh") Integer xyzpyybbh){
		List<ReserveInfoJob> reserveInfoJobs=schoolJobService.getResJobList(xyzpyybbh);
		return  reserveInfoJobs;
	}



	/**
	 *改变状态
	 * @param xyzpyybbh
	 * @param dfnr
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/resApplication/changeStatus",method = RequestMethod.POST)
	@ResponseBody
	public Message changeStatus(@RequestParam(value = "xyzpyybbh") Integer xyzpyybbh,
								@RequestParam(value = "dfnr") String dfnr,
								HttpServletRequest request){
		Message msg=new Message();
		User user=(User) request.getSession().getAttribute("user");
		String zgdlzh=user.getDlzh();

		schoolJobService.changeYyzt(zgdlzh,(short)1,xyzpyybbh,dfnr);
		msg.setStatus("success");
		return msg;
	}

    @RequestMapping("/insertSchoolJob")
    @ResponseBody
    public Message insertSchoolJob(SchoolJob schoolJob){
        int i=schoolJobService.insertSchoolJob(schoolJob);
        Message message=new Message();
        if (i>0){
            message.setStatus("Success");
            message.setMsg(schoolJobService.getSchoolJobId(schoolJob.getYrdwxxbbh(),schoolJob.getYynr())+"");
        }else {
            message.setStatus("fail");
            message.setMsg("fail");
        }
        return  message;
    }
}
