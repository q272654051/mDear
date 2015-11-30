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
	public boolean saveCustomer(Customer entity) {
		// TODO Auto-generated method stub
		return this.saveEntity(entity);
		
	}

	@Override
	public boolean updateCustomer(Customer id) {
		// TODO Auto-generated method stub
		return this.updateEntity(id);
	}

	@Override
	public boolean deleteCustomer(Customer entity) {
		// TODO Auto-generated method stub
		return this.deleteEntity(entity);
	}

	@Override
	public List<Customer> findCustomer() {
		// TODO Auto-generated method stub
		return this.findCustomer();
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
