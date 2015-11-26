package win.mdear.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String login(HttpServletRequest request, HttpServletResponse response){
		String name = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		
		List<Customer> list = customerService.findCustomerByNameAndPwd(name,pwd);
		Customer customer = list.get(0);
		
		return null;
	}
}
