/**
 * 
 */
package win.mdear.commons.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import win.mdear.vo.Customer;

/**
 * @author djx
 * @date 2015-8-12
 * @description
 */
public class WebConstants {
	public static final String CURRENT_CUSTOMER = "customer_info";
	public static void setCustomer(HttpServletRequest request,Customer customer){
		HttpSession session = request.getSession();
		session.setAttribute(CURRENT_CUSTOMER, customer);
	}
	
	public static Customer getCustomer(HttpServletRequest request){
        HttpSession session = request.getSession();
        return (Customer)session.getAttribute(CURRENT_CUSTOMER);
    }
}
