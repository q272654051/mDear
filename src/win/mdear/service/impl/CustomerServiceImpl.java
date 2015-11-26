package win.mdear.service.impl;

import java.util.List;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import win.mdear.commons.dao.BaseDao;
import win.mdear.service.ICustomerService;
import win.mdear.vo.Customer;

/**
 * @author djx
 * @date 2015-8-17
 * @description
 */
@Service
@Transactional
public class CustomerServiceImpl  extends BaseDao<Customer> implements ICustomerService{
    
    public CustomerServiceImpl() {
        this.setClazz(Customer.class);
    }
	@Override
	public boolean saveUser(Customer entity) {
		// TODO Auto-generated method stub
		return this.saveUser(entity);
		
	}

	@Override
	public boolean updateUser(Customer id) {
		// TODO Auto-generated method stub
		return this.updateUser(id);
	}

	@Override
	public boolean deleteUser(Customer entity) {
		// TODO Auto-generated method stub
		return this.deleteUser(entity);
	}

	@Override
	public List<Customer> findUser() {
		// TODO Auto-generated method stub
		return this.findUser();
	}

	@Override
	public List<Customer> findCustomerByName(String name) {
		String sql = "from Customer u where u.userName = '"+name+"'";
		List<Customer> list = findByHQLQuery(sql);
		return list;
	}
	
	@Override
	public List<Customer> findCustomerByNameAndPwd(String name, String pwd) {
		String sql = "from Customer u where u.userName = '"+name+"' and pwd='"+pwd+"'";
		List<Customer> list = findByHQLQuery(sql);
		return list;
	}

}
