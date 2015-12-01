package win.mdear.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import win.mdear.commons.util.JsonUtil;
import win.mdear.commons.util.WebConstants;
import win.mdear.service.ICustomerService;
import win.mdear.vo.Customer;




@Controller
@RequestMapping("/registerController")
public class RegisterController {
	
	@Resource
    ICustomerService customerService;
	
	/**
	 * 用户名重复检测
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/registercheck")
	public void registercheck(HttpServletRequest request, HttpServletResponse response, PrintWriter printWriter){
		Map<String,Object> result_map = new HashMap<String,Object>();
		String name = request.getParameter("username");
		
		try{
			List<Customer> list = customerService.findCustomerByName(name);
			if (list.size()>0){
						result_map.put("success", true);
						result_map.put("msg", "该用户已存在");
			} else {
				result_map.put("success", false);
				result_map.put("msg", "该用户不存在");
			}
		}catch(Exception e){
			result_map.put("success", false);
			result_map.put("msg", "系统错误请稍后再试。");
		}
		printWriter.print(JsonUtil.jsonObject(result_map, null, null));
		printWriter.flush();
		printWriter.close();
	}
	
	
	/**
	 * 用户注册
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/register")
	public void login(HttpServletRequest request, HttpServletResponse response, PrintWriter printWriter){
		Map<String,Object> result_map = new HashMap<String,Object>();
		Customer customer = new Customer();
		String name = request.getParameter("username");
		String pwd = request.getParameter("password");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		customer.setUserId(UUID.randomUUID()+"");
		customer.setUserName(name);
		customer.setPwd(pwd);
		customer.setPhone(phone);
		customer.setEmail(email);
		
		try{
			boolean con = customerService.saveCustomer(customer);
			
			if (con){
				result_map.put("success", true);
				result_map.put("msg", "注册成功！");
				request.getSession().setAttribute("customerId",customer.getUserId()+"");         //存储登陆人id
				request.getSession().setMaxInactiveInterval(3600);                           //设置超时时间3600s
				WebConstants.setCustomer(request, customer);
			} else {
				result_map.put("success", false);
				result_map.put("msg", "注册失败，请重试！");
			}
		}catch(Exception e){
			result_map.put("success", false);
			result_map.put("msg", "系统错误请稍后再试。");
		}
		printWriter.print(JsonUtil.jsonObject(result_map, null, null));
		printWriter.flush();
		printWriter.close();
	}
}
