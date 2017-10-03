package me.xx.library.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.ant.FindLeaksTask;
import org.apache.commons.beanutils.BeanUtils;

import me.xx.library.entity.Student;
import me.xx.library.entity.Teacher;
import me.xx.library.service.BorrowBookService;
import me.xx.library.service.StudentService;
import me.xx.library.service.TeacherService;
import me.xx.library.service.impl.BorrowBookServiceImpl;
import me.xx.library.service.impl.StudentServiceImpl;
import me.xx.library.service.impl.TeacherServiceImpl;
import me.xx.library.utils.PageBean;

/**
 * Servlet implementation class TeacherServlet
 */
@WebServlet("/TeacherServlet")
public class TeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private TeacherService teacherService=new TeacherServiceImpl();
    private StudentService studentService=new StudentServiceImpl();
    private BorrowBookService borrowBookService=new BorrowBookServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method=request.getParameter("method");
		if(method.equals("list")||method.equals("search")){
			list(request, response);
		}else if(method.equals("add")){
			add(request, response);
		}else if(method.equals("delete")){
			delete(request, response);
		}else if(method.equals("update")){
			update(request, response);
		}else if(method.equals("toupdate")){
			toupdate(request, response);
		}else if(method.equals("login")){
			login(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void list(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		PageBean<Teacher> pb=new PageBean<>();
		String currPage=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		if(currPage==null||"".equals(currPage)||Integer.parseInt(currPage)<1){
			currPage="1";
		}
		int page = Integer.parseInt(currPage);
		pb.setCurrentPage(page);
		pb.setKeyWord(keyWord);
		teacherService.findByPage(pb);
		request.setAttribute("pb",pb);
		request.getRequestDispatcher("/sys/detail/teacherList.jsp").forward(request, response);
	}
	
	private void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		Teacher teacher=new Teacher();
		try {
			BeanUtils.populate(teacher,request.getParameterMap());
			teacherService.add(teacher);
			list(request, response);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void toupdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid=request.getParameter("id");
		Teacher teacher = teacherService.findById(Integer.parseInt(sid));
		request.setAttribute("teacher",teacher);
		request.getRequestDispatcher("/sys/detail/updateTeacher.jsp").forward(request, response);
	}
	
	private void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		Teacher teacher=new Teacher();
		try {
			BeanUtils.populate(teacher,request.getParameterMap());
			teacherService.update(teacher);
			list(request, response);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid=request.getParameter("id");
		teacherService.delete(Integer.parseInt(sid));
		list(request, response);
	}
	
	private void findByUsername(HttpServletRequest request, HttpServletResponse response) 
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
		request.setAttribute("bookCount",bookCount);
		request.getRequestDispatcher("/app/info.jsp").forward(request, response);
	}
	
	private void login(HttpServletRequest request, HttpServletResponse response)
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
			request.getSession().setAttribute("teacherName",name);
			request.getSession().setAttribute("userName",teacher.getUsername());
			findByUsername(request, response);
		}else{
			request.setAttribute("msg","Login failed!Please check name or password!");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}
}
