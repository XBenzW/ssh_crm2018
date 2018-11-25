package cn.xben.serviceImpl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import cn.xben.Until.PageBean;
import cn.xben.dao.CustomerDao;
import cn.xben.domain.Customer;
import cn.xben.service.CustomerService;

public class CustomerServiceImpl  implements CustomerService{

	private CustomerDao customerDao;
	
	@Override
	public PageBean getPageBean(DetachedCriteria dc, Integer currentPage, Integer pageSize) {
	    //1.获取总记录数
		Integer totalCount = customerDao.getTotalCount(dc);
	    //2.创建PageBean对象
		PageBean pb = new PageBean(currentPage, totalCount, pageSize);
	    //3.获取list
		List<Customer> list = customerDao.getPageList(dc, pb.getStart(), pb.getPageSize());
	    //4.将list加入PageBean对象中 
		pb.setList(list);
		return pb;
	}

	@Override
	public void saveOrUpdate(Customer customer) {
		
		customerDao.saveOrUpdate(customer);
	}

	@Override
	public void save(Customer customer) {
		
		customerDao.save(customer);
	}

	@Override
	public void delete(Long cust_id) {
		customerDao.delete(cust_id);
		
	}

	@Override
	public Customer getById(Long cust_id) {
		// TODO Auto-generated method stub
		return customerDao.getById(cust_id);
	}


	@Override
	public List<Object[]> getIndustryCount() {
		// TODO Auto-generated method stub
		return customerDao.getIndustryCount();
	}

	@Override
	public List<Object[]> getSourceCount() {
		// TODO Auto-generated method stub
		return customerDao.getSourceCount();
	}

	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}


	


	
}
