package com.eyuan.actionInterceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;



public class BossInterceptor implements Interceptor {


	public void destroy() {
	}

	public void init() {
	}

	public String intercept(ActionInvocation invocation) throws Exception {
		String boss = (String)ActionContext.getContext().getSession().get("managerName");
		if(boss.equals("boss")){
			return invocation.invoke();
		}else{
			return "notBoss";
		}
	}

}
