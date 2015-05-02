package com.eyuan.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BackLoginFilter extends HttpServlet implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		String path = req.getContextPath();
		String basePath = req.getScheme() + "://" + req.getServerName() + ":"
				+ req.getServerPort() + path + "/";

		Object manager = req.getSession().getAttribute("managerName");
		Object seller = req.getSession().getAttribute("sellerName");
		if (manager == null && seller == null) {
            res.sendRedirect(basePath+"jsp/login.jsp");
            return;
		}
		chain.doFilter(request, response);
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
