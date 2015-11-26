package win.mdear.service;

import java.io.Serializable;
import java.util.List;

import win.mdear.commons.dao.IBaseDAO;
import win.mdear.vo.Customer;

/**
 * @author djx
 * @date 2015-8-17
 * @description
 */
public interface ICustomerService extends IBaseDAO<Customer, Serializable>{

	//保存
	public boolean saveUser (Customer entity);
	//修改
	public boolean updateUser (Customer id);
	//删除
	public boolean deleteUser (Customer entity);
	//查询
	public List<Customer> findUser ();
	//
	public List<Customer> findCustomerByName(String name);
	//根据用户名和密码登陆
	public List<Customer> findCustomerByNameAndPwd(String name,String pwd);
	
//	public String login(Customer user);
}
