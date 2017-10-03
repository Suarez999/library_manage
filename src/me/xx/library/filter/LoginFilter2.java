package me.xx.library.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class LoginFilter2
 */
@WebFilter(filterName="loginFilter2",urlPatterns={"/StudentServlet","/BookServlet"})
public class LoginFilter2 implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter2() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request1, ServletResponse response1, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)request1;  
	     HttpServletResponse response = (HttpServletResponse)response1;  
	     String userName = (String) request.getSession().getAttribute("userName");
		 if(userName==null){
			String path = request.getContextPath();
			 //request.getRequestDispatcher("/login.jsp").forward(request, response);
			 //System.out.println(path);
			 response.sendRedirect(path+"/login.jsp");
		 }else{
			 chain.doFilter(request, response);
		 }	
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
