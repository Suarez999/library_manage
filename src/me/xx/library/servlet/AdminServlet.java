package me.xx.library.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.xx.library.entity.Admin;
import me.xx.library.entity.Student;
import me.xx.library.service.AdminService;
import me.xx.library.service.impl.AdminServiceImpl;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private AdminService adminService=new AdminServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if(method.equals("login")){
			login(request, response);
		}else if(method.equals("adminLogout")){
			adminLogout(request, response);
		}else if(method.equals("librarianLogout")){
			librarianLogout(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String name=request.getParameter("username");
		String pwd=request.getParameter("pwd");
		Admin admin = adminService.login(name, pwd);
		String ic = (String) request.getSession().getAttribute("sRand3");
		String imageCode=request.getParameter("imageCode3");
		if(!ic.equals(imageCode)){
			request.setAttribute("msg","CAPTCHA is wrong!Please try again!");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}else{
			if(admin!=null&&ic.equals(imageCode)){
				request.getSession().setAttribute("adminName",name);
				response.sendRedirect("sys/index.html");
			}else{
				request.setAttribute("msg","Login failed!Please check name or password!");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		}
	}
	
	private void adminLogout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		request.getSession().removeAttribute("adminName");
		response.sendRedirect("login.jsp");
	}
	
	private void librarianLogout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		request.getSession().removeAttribute("librarian");
		response.sendRedirect("login.jsp");
	}
}
