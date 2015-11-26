package win.mdear.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
@RequestMapping("/loginController")
public class LoginController {
	
	@Resource
    ICustomerService customerService;
	
	/**
	 * 用户登录验证
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/login")
	public void login(HttpServletRequest request, HttpServletResponse response, PrintWriter printWriter){
		Map<String,Object> result_map = new HashMap<String,Object>();
		Customer customer = new Customer();
		String name = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		
		try{
			List<Customer> list = customerService.findCustomerByName(name);
			if (list.size()>0){
				customer = list.get(0);
				if (customer.getStatus()==0){
					if (pwd.equals(customer.getPwd())){
						result_map.put("success", true);
						result_map.put("data", customer);
						result_map.put("msg", "登录成功");
						request.getSession().setAttribute("customerId",customer.getId()+"");         //存储登陆人id
						request.getSession().setMaxInactiveInterval(3600);                           //设置超时时间3600s
						WebConstants.setCustomer(request, customer);
					} else {
						result_map.put("success", false);
						result_map.put("msg", "密码错误");
					}
				} else {
					result_map.put("success", false);
					result_map.put("msg", "该用户已被锁定");
				}
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
}
