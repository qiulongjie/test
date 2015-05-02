package com.eyuan.actionInterceptor;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

import com.opensymphony.xwork2.ActionContext;

@Aspect
public class ManagerInterceptor {

	@Pointcut("execution(* com.eyuan.dao.impl.SuperUserInfoDaoImpl.get*(..))")
	public void anyMethod(){
		
	}
	
	//判断管理员是否在权限
	@Around("anyMethod()")
	public Object doBasicProfiling(ProceedingJoinPoint pjp) throws Throwable {
		
//		String manager = (String) ActionContext.getContext().getSession().get("namagerName");
//		if(manager==null){
//			System.out.println("没有权限！！！不能进入方法");
//			return null;
//		}
//		else{
			Object result = pjp.proceed();
			return result;
//		}
	}
}
