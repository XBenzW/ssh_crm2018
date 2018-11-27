package cn.xben.daoImpl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import cn.xben.dao.StaffDao;
import cn.xben.domain.Admin;
import cn.xben.domain.Staff;

public class StaffDaoImpl extends BaseDaoImpl<Staff> implements StaffDao{

	@Override
	public Staff getStaffByName(String staff_name) {
		DetachedCriteria dc = DetachedCriteria.forClass(Staff.class);
		dc.add(Restrictions.eq("staff_name", staff_name));
		List<Staff> list = (List<Staff>) getHibernateTemplate().findByCriteria(dc );
		if(list != null && list.size()>0){
			return list.get(0);
		}else {
			return null;
		}
	}

}
