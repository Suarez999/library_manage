package me.xx.library.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import org.apache.commons.beanutils.BeanUtils;

import me.xx.library.entity.BorrowBook;
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
 * Servlet implementation class StudentServlet
 */
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private StudentService studentService=new StudentServiceImpl(); 
    private BorrowBookService borrowBookService=new BorrowBookServiceImpl();
    private TeacherService teacherService=new TeacherServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		if(method.equals("add")){
			add(request, response);
		}else if(method.equals("list")||method.equals("search")){
			list(request,response);
		}else if(method.equals("toupdate")){
			toupdate(request, response);
		}else if(method.equals("update")){
			update(request, response);
		}else if(method.equals("listbooks")){
			listbooks(request, response);
		}else if(method.equals("delete")){
			delete(request, response);
		}else if(method.equals("findByUsername")){
			findByUsername(request, response);
		}else if(method.equals("sysFindByUsername")){
			sysFindByUsername(request, response);
		}else if(method.equals("findCurrentBorrow")){
			findCurrentBorrow(request, response);
		}else if(method.equals("changePwd")){
			changePwd(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		Student student=new Student();
		try {
			BeanUtils.populate(student, request.getParameterMap());
			studentService.addStudent(student);
			list(request, response);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
	}
	
	private void list(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		PageBean<Student> pb=new PageBean<>();
		String currPage=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		if(currPage==null||"".equals(currPage)||Integer.parseInt(currPage)<1){
			currPage="1";
		}
		int page = Integer.parseInt(currPage);
		pb.setCurrentPage(page);
		pb.setKeyWord(keyWord);
		studentService.findByPage(pb);;
		request.setAttribute("pb",pb);
		request.getRequestDispatcher("/sys/detail/studentList.jsp").forward(request, response);
	}
	
	private void toupdate(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String sid=request.getParameter("id");
		Student student = studentService.findById(Integer.parseInt(sid));
		request.setAttribute("student",student);
		request.getRequestDispatcher("/sys/detail/updateStudent.jsp").forward(request, response);
	}
	
	private void update(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		Student student=new Student();
		try {
			BeanUtils.populate(student, request.getParameterMap());
			studentService.update(student);
			list(request, response);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
	}
	private void listbooks(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String sid = request.getParameter("id");
		int studentId = Integer.parseInt(sid);
		String userName=request.getParameter("userName");
		Student student = studentService.findById(studentId);
		List<BorrowBook> list = borrowBookService.findCurrentByUsername(userName);
		request.setAttribute("student",student);
		request.setAttribute("bookList",list);
		request.getRequestDispatcher("/sys/detail/studentBooks.jsp").forward(request, response);
	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String sid = request.getParameter("id");
		studentService.delete(Integer.parseInt(sid));
		list(request, response);
	}
	
	
	
	private void findByUsername(HttpServletRequest request, HttpServletResponse response) 
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
	
	private void sysFindByUsername(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String userName=request.getParameter("userName");
		Student student = studentService.findByUsername(userName);
		if(student!=null){
			response.getWriter().print("This user name has been used!Change it!");
			response.getWriter().flush();
			response.getWriter().close();
		}
	}
	private void findCurrentBorrow(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String userName=(String) request.getSession().getAttribute("userName");
		List<BorrowBook> list = borrowBookService.findCurrentByUsername(userName);
		Integer count = borrowBookService.findCountByUsername(userName);
		request.setAttribute("list",list);
		request.setAttribute("count",count);
		request.getRequestDispatcher("/app/currentbooks.jsp").forward(request, response);
	}
	
	private void changePwd(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String userName=(String) request.getSession().getAttribute("userName");
		Student student = studentService.findByUsername(userName);
		String pwd=request.getParameter("new_passwd");
		if(student!=null){
			studentService.updatePwd(userName, pwd);
		}else{
			teacherService.updatePwd(userName, pwd);
		}
		request.setAttribute("tip","change successfully!");
		request.getRequestDispatcher("/app/changepwd.jsp").forward(request, response);
	}
}
