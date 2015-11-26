package win.mdear.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/loginController")
public class LoginController {
	
	/**
	 * 获取用户信息
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/login")
	public String login(HttpServletRequest request, HttpServletResponse response){
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		
		return null;
	}
}
