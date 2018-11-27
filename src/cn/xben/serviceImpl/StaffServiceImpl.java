package cn.xben.serviceImpl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import cn.xben.Until.PageBean;
import cn.xben.dao.StaffDao;
import cn.xben.domain.Staff;
import cn.xben.service.StaffService;

public class StaffServiceImpl implements StaffService {

	private StaffDao staffDao;

	@Override
	public PageBean getPageBean(DetachedCriteria dc, Integer currentPage, Integer pageSize) {
		// 1 调用Dao查询总记录数
		Integer totalCount = staffDao.getTotalCount(dc);
		// 2 创建PageBean对象
		PageBean pb = new PageBean(currentPage, totalCount, pageSize);
		// 3 调用Dao查询分页列表数据

		List<Staff> list = staffDao.getPageList(dc, pb.getStart(), pb.getPageSize());
		// 4 列表数据放入pageBean中.并返回
		pb.setList(list);
		return pb;
	}
	
	@Override
	public Staff getStaffByName(Staff staff) {
	   //1.根据name查询staf对象，如果对象为空抛异常，密码不对抛异常
		Staff exitS = staffDao.getStaffByName(staff.getStaff_name());
		
		if(exitS==null){
			throw new RuntimeException("用户不存在");
		}
		if(!exitS.getStaff_password().equals(staff.getStaff_password())){
			throw new RuntimeException("密码错误");
		}
	   //2.返回正确对象
		return exitS;
	}

	@Override
	public void saveOrUpdate(Staff staff) {
		staffDao.saveOrUpdate(staff);;

	}

	@Override
	public Staff getById(Long staff_id) {
		// TODO Auto-generated method stub
		return staffDao.getById(staff_id);
	}

	public StaffDao getStaffDao() {
		return staffDao;
	}

	public void setStaffDao(StaffDao staffDao) {
		this.staffDao = staffDao;
	}

	@Override
	public void delete(Long staff_id) {
		
		staffDao.delete(staff_id);
	}



	
	
}
