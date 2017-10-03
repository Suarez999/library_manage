package me.xx.library.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.xx.library.entity.Admin;
import me.xx.library.entity.Book;
import me.xx.library.entity.BorrowBook;
import me.xx.library.entity.Recommend;
import me.xx.library.entity.Student;
import me.xx.library.entity.Teacher;
import me.xx.library.service.AdminService;
import me.xx.library.service.BookService;
import me.xx.library.service.BorrowBookService;
import me.xx.library.service.RecommendService;
import me.xx.library.service.StudentService;
import me.xx.library.service.TeacherService;
import me.xx.library.service.impl.AdminServiceImpl;
import me.xx.library.service.impl.BookServiceImpl;
import me.xx.library.service.impl.BorrowBookServiceImpl;
import me.xx.library.service.impl.RecommendServiceImpl;
import me.xx.library.service.impl.StudentServiceImpl;
import me.xx.library.service.impl.TeacherServiceImpl;
import me.xx.library.utils.PageBean;

/**
 * Servlet implementation class CommonServlet
 */
@WebServlet("/CommonServlet")
public class CommonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private StudentService studentService=new StudentServiceImpl(); 
    private BorrowBookService borrowBookService=new BorrowBookServiceImpl();
    private TeacherService teacherService=new TeacherServiceImpl();
    private AdminService adminService=new AdminServiceImpl();
    private BookService bookService=new BookServiceImpl();
    private RecommendService recommendService=new RecommendServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method=request.getParameter("method");
		if(method.equals("studentLogin")){
			studentLogin(request, response);
		}else if(method.equals("teacherLogin")){
			teacherLogin(request,response);
		}else if(method.equals("adminLogin")){
			adminLogin(request,response);
		}else if(method.equals("list")){
			list(request, response);
		}else if(method.equals("listNew")){
			listNew(request, response);
		}else if(method.equals("listHot")){
			listHot(request, response);
		}else if(method.equals("listRecommend")){
			listHot(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void findByStudentname(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String userName=(String) request.getSession().getAttribute("userName");
		Student student = studentService.findByUsername(userName);
		Integer bookCount = borrowBookService.findCountByUsername(userName);
		if(student!=null){
			request.setAttribute("student",student);
			request.getSession().setAttribute("maxBook",student.getMax_book());
		}else{
			Teacher teacher = teacherService.findByUsername(userName);
			request.setAttribute("teacher",teacher);
			request.getSession().setAttribute("maxBook",teacher.getMax_book());
		}
		List<BorrowBook> list = borrowBookService.findOverdue(userName);
		if(list==null||list.size()==0){
			request.setAttribute("overdue",0);
		}else{
			request.setAttribute("overdue",list.size());
		}
		request.setAttribute("bookCount",bookCount);
		request.getRequestDispatcher("/app/info.jsp").forward(request, response);
	}

	private void studentLogin(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String name=request.getParameter("username");
		String pwd=request.getParameter("pwd");
		Student student = studentService.login(name, pwd);
		String ic = (String) request.getSession().getAttribute("sRand");
		String imageCode=request.getParameter("imageCode");
		if(!ic.equals(imageCode)){
			request.setAttribute("msg","CAPTCHA is wrong!Please try again!");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}else{
			if(student!=null&&ic.equals(imageCode)){
				request.getSession().setAttribute("studentName",name);
				request.getSession().setAttribute("userName",student.getUsername());
				findByStudentname(request, response);
			}else{
				request.setAttribute("msg","Login failed!Please check name or password!");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		}
	}
	
	private void findByTeachername(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String userName=(String) request.getSession().getAttribute("userName");
		Student student = studentService.findByUsername(userName);
		Integer bookCount = borrowBookService.findCountByUsername(userName);
		if(student!=null){
			request.setAttribute("student",student);
		}else{
			Teacher teacher = teacherService.findByUsername(userName);
			request.setAttribute("teacher",teacher);
		}
		List<BorrowBook> list = borrowBookService.findOverdue(userName);
		if(list==null||list.size()==0){
			request.setAttribute("overdue",0);
		}else{
			request.setAttribute("overdue",list.size());
		}
		request.setAttribute("bookCount",bookCount);
		request.getRequestDispatcher("/app/info.jsp").forward(request, response);
	}
	
	private void teacherLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String name=request.getParameter("username");
		String pwd=request.getParameter("pwd");
		Teacher teacher = teacherService.login(name,pwd);
		String imageCode=request.getParameter("imageCode2");
		String ic = (String) request.getSession().getAttribute("sRand2");
		if(!ic.equals(imageCode)){
			request.setAttribute("msg","CAPTCHA is wrong!Please try again!");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		if(teacher!=null&&ic.equals(imageCode)){
			if(teacher.getUsername().equals("t1")){
				request.getSession().setAttribute("librarian",teacher.getUsername());
				response.sendRedirect("librarian/index.html");
			}else{
				request.getSession().setAttribute("teacherName",name);
				request.getSession().setAttribute("userName",teacher.getUsername());
				findByTeachername(request, response);
			}
		}else{
			request.setAttribute("msg","Login failed!Please check name or password!");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}
	
	private void adminLogin(HttpServletRequest request, HttpServletResponse response)
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
	
	public void list(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String currPage=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		if(currPage==null||"".equals(currPage)||Integer.parseInt(currPage)<1){
			currPage="1";
		}
		int page = Integer.parseInt(currPage);
		PageBean<Book> pb=new PageBean<>();
		pb.setCurrentPage(page);
		pb.setKeyWord(keyWord);
		bookService.findByPage(pb);
		request.setAttribute("pb",pb);	
		request.getRequestDispatcher("/library2.jsp").forward(request, response);
	}
	
	private void listNew(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String currPage=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		if(keyWord!=null){
			keyWord=new String(keyWord.getBytes("iso8859-1"),"utf-8");
		}
		
		if(currPage==null||"".equals(currPage)||Integer.parseInt(currPage)<1){
			currPage="1";
		}
		int page = Integer.parseInt(currPage);
		PageBean<Book> pb=new PageBean<>();
		pb.setCurrentPage(page);
		pb.setKeyWord(keyWord);
		bookService.findNewByPage(pb);
		request.setAttribute("pb",pb);	
		request.getRequestDispatcher("/app/newbooks.jsp").forward(request, response);
	}
	
	private void listHot(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String currPage=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		if(keyWord!=null){
			keyWord=new String(keyWord.getBytes("iso8859-1"),"utf-8");
		}
		
		if(currPage==null||"".equals(currPage)||Integer.parseInt(currPage)<1){
			currPage="1";
		}
		int page = Integer.parseInt(currPage);
		PageBean<Book> pb=new PageBean<>();
		pb.setCurrentPage(page);
		pb.setKeyWord(keyWord);
		bookService.findHotByPage(pb);
		request.setAttribute("pb",pb);	
		request.getRequestDispatcher("/app/hotbooks.jsp").forward(request, response);
	}
	
	private void listRecommend(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String currPage=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		if(currPage==null||"".equals(currPage)||Integer.parseInt(currPage)<1){
			currPage="1";
		}
		int page = Integer.parseInt(currPage);
		PageBean<Recommend> pb=new PageBean<>();
		pb.setCurrentPage(page);
		pb.setKeyWord(keyWord);
		recommendService.findByPage(pb);
		request.setAttribute("pb",pb);	
		request.getRequestDispatcher("/app/recommendation.jsp").forward(request, response);
	}
}
