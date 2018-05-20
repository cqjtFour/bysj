package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Employers;
import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.User;
import com.cqfour.bysj.service.EmployerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * Created by a on 2018/5/12.
 */
@Controller
@RequestMapping("/Employer")
public class EmployerController {

	@Autowired
	private EmployerService employerService;



	/**
	 * 单位注册
	 * @param dwmc
	 * @param dwxz
	 * @param zzjgdm
	 * @param sshy
	 * @param dwgm
	 * @param dwszd
	 * @param dwlxr
	 * @param dzyx
	 * @param lxrdh
	 * @param dwjbqkjj
	 * @param dwlxdh
	 * @param yzbm
	 * @param mm
	 * @return
	 */
	@RequestMapping(value = "/register",method = RequestMethod.POST)
	@ResponseBody
	public Message registerEmployer(
			                   @RequestParam("dwmc") String dwmc,
							   @RequestParam("dwxz") String dwxz,
							   @RequestParam("zzjgdm") String zzjgdm,
							   @RequestParam("sshy") String sshy,
							   @RequestParam("dwgm") String dwgm,
							   @RequestParam("dwszd") String dwszd,
							   @RequestParam("dwlxr") String dwlxr,
							   @RequestParam("dzyx") String dzyx,
							   @RequestParam("lxrdh") String lxrdh,
							   @RequestParam("dwjbqkjj") String dwjbqkjj,
							   @RequestParam("dwlxdh") String dwlxdh,
							   @RequestParam("yzbm") String yzbm,
							   @RequestParam("mm") String mm
	){

		Message msg=new Message();
		//设置登录帐号信息
		User user=new User();
		user.setDlzh(dzyx);
		user.setDlmm(mm);
		//用人单位信息
		Employers employers=new Employers();
		employers.setDwmc(dwmc);
		employers.setDwxz(dwxz);
		employers.setZzjgdm(zzjgdm);
		employers.setSshy(sshy);
		employers.setDwgm(dwgm);
		employers.setSzd(dwszd);
		employers.setDwlxr(dwlxr);
		employers.setDzyx(dzyx);
		employers.setLxrdh(lxrdh);
		employers.setDwjbqkjj(dwjbqkjj);
		employers.setDwlxdh(dwlxdh);
		employers.setYzbm(yzbm);

		//传给service处理
		try {
			employerService.register(employers, user);
			msg.setStatus("success");
		}catch (Exception e){
			msg.setStatus("fail");
		}

		return msg;
	}
}
