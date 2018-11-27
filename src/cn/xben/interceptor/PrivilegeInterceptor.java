package cn.xben.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

import cn.xben.domain.Staff;

public class PrivilegeInterceptor extends MethodFilterInterceptor{

	@Override
	//不校验login regist方法
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		//1.获取session中用户
		Staff staff = (Staff) ActionContext.getContext().getSession().get("staff");
		//2.检测用户是否为空
		if(staff!=null){
			return invocation.invoke();
		}
		return "privilege";
	}

}
