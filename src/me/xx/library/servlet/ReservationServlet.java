package me.xx.library.servlet;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.xx.library.entity.Book;
import me.xx.library.entity.BorrowBook;
import me.xx.library.entity.Reservation;
import me.xx.library.service.BookService;
import me.xx.library.service.BorrowBookService;
import me.xx.library.service.ReservationService;
import me.xx.library.service.impl.BookServiceImpl;
import me.xx.library.service.impl.BorrowBookServiceImpl;
import me.xx.library.service.impl.ReservationServiceImpl;
import me.xx.library.utils.JdbcUtils;
import me.xx.library.utils.PageBean;

/**
 * Servlet implementation class ReservationServlet
 */
@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ReservationService reservationService=new ReservationServiceImpl();
    private BookService bookService=new BookServiceImpl();
    private BorrowBookService borrowBookService=new BorrowBookServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReservationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String method = request.getParameter("method");
		if(method.equals("add")){
			add(request, response);
		}else if(method.equals("selectCount")){
			selectCount(request, response);
		}else if(method.equals("list")){
			list(request, response);
			request.getRequestDispatcher("app/shelf.jsp").forward(request, response);
		}else if(method.equals("delete")){
			delete(request, response);
			request.getRequestDispatcher("app/shelf.jsp").forward(request, response);
		}else if(method.equals("truncate")){
			truncate(request, response);
			request.getRequestDispatcher("app/shelf.jsp").forward(request, response);
		}else if(method.equals("listshelf2")){
			list(request, response);
			request.getRequestDispatcher("app/shelf2.jsp").forward(request, response);
		}else if(method.equals("delete2")){
			delete(request,response);
			request.getRequestDispatcher("app/shelf2.jsp").forward(request, response);
		}else if(method.equals("sysList")||method.equals("sysSearch")){
			findByPage(request, response);
		}else if(method.equals("addBorrow")){
			addBorrow(request, response);
		}else if(method.equals("reject")){
			reject(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid = request.getParameter("id");
		String userName=(String) request.getSession().getAttribute("userName");
		Book book = bookService.findById(Integer.parseInt(sid));
		Reservation reservation=new Reservation();
		reservation.setUserName(userName);
		reservation.setBook_name(book.getName());
		reservation.setIsbn(book.getIsbn());
		reservation.setProduct(book.getProduct());
		reservation.setAuthor(book.getAuthor());
		reservation.setBook_id(book.getId());
		reservationService.add(reservation);
		Integer count = reservationService.selectCountByUsername(userName);
		int remain=book.getRemain()-1;
		bookService.updateRemain(Integer.parseInt(sid), remain);
		response.getWriter().print(count);
		response.getWriter().flush();
		response.getWriter().close();
	}
	
	private void selectCount(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String userName=(String) request.getSession().getAttribute("userName");
		Integer count = reservationService.selectCountByUsername(userName);
		response.getWriter().print(count);
		response.getWriter().flush();
		response.getWriter().close();
	}
	
	private void list(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String userName=(String) request.getSession().getAttribute("userName");
		List<Reservation> list = reservationService.findByUsername(userName);
		Integer count = reservationService.selectCountByUsername(userName);
		request.setAttribute("list",list);
		request.setAttribute("count", count);
	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid = request.getParameter("id");
		String bookId=request.getParameter("bookId");
		reservationService.delete(Integer.parseInt(sid));
		Book book2 = bookService.findById(Integer.parseInt(bookId));
		book2.setRemain(book2.getRemain()+1);
		bookService.updateById(book2);
		list(request, response);
	}
	
	private void truncate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		reservationService.truncate();
		list(request, response);
	}
	
	private void findByPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String currPage=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		if(currPage==null||"".equals(currPage)||Integer.parseInt(currPage)<1){
			currPage="1";
		}
		int page = Integer.parseInt(currPage);
		PageBean<Reservation> pb=new PageBean<>();
		pb.setCurrentPage(page);
		pb.setKeyWord(keyWord);
		reservationService.findByPage(pb);
		request.setAttribute("pb",pb);
		request.getRequestDispatcher("/librarian/detail/reservationList.jsp").forward(request, response);
	}
	
	private void addBorrow(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid = request.getParameter("id");
		String userName = request.getParameter("userName");
		Integer count = borrowBookService.findCountByUsername(userName);
		List<BorrowBook> list = borrowBookService.findOverdue(userName);
		if(userName.charAt(0)=='s'){
			if(list!=null&&list.size()>0){
				request.setAttribute("tip","You have overdue book!Please return it then borrow!");
				findByPage(request, response);
			}
			else if(count>4){
				request.setAttribute("tip","You have borrowed more than 5 books!Cannot borrow!");
				findByPage(request, response);
			}else{
				request.setAttribute("tip","Borrow successfully!");
				Reservation reservation = reservationService.findById(Integer.parseInt(sid));
				BorrowBook borrowBook=new BorrowBook();
				borrowBook.setBook_name(reservation.getBook_name());
				borrowBook.setAuthor(reservation.getAuthor());
				borrowBook.setIsbn(reservation.getIsbn());
				borrowBook.setProduct(reservation.getProduct());
				borrowBook.setUsername(reservation.getUserName());
				borrowBook.setBook_id(reservation.getBook_id());
				Date date=new Date();
				borrowBook.setBorrow_date(date);
				Calendar calendar=new GregorianCalendar(); 
				calendar.setTime(date);
				calendar.add(calendar.MONTH,3);
				date=calendar.getTime();
				borrowBook.setExpiration_date(date);
				borrowBookService.add(borrowBook);
				reservationService.delete(Integer.parseInt(sid));
				findByPage(request, response);
			}
		}else{
			if(list!=null&&list.size()>0){
				request.setAttribute("tip","You have overdue book!Please return it then borrow!");
				findByPage(request, response);
			}
			else if(count>9){
				request.setAttribute("tip","You have borrowed more than 10 books!Cannot borrow!");
				findByPage(request, response);
			}else{
				request.setAttribute("tip","Borrow successfully!");
				Reservation reservation = reservationService.findById(Integer.parseInt(sid));
				BorrowBook borrowBook=new BorrowBook();
				borrowBook.setBook_name(reservation.getBook_name());
				borrowBook.setAuthor(reservation.getAuthor());
				borrowBook.setIsbn(reservation.getIsbn());
				borrowBook.setProduct(reservation.getProduct());
				borrowBook.setUsername(reservation.getUserName());
				borrowBook.setBook_id(reservation.getBook_id());
				Date date=new Date();
				borrowBook.setBorrow_date(date);
				Calendar calendar=new GregorianCalendar(); 
				calendar.setTime(date);
				calendar.add(calendar.MONTH,3);
				date=calendar.getTime();
				borrowBook.setExpiration_date(date);
				borrowBookService.add(borrowBook);
				reservationService.delete(Integer.parseInt(sid));
				findByPage(request, response);
			}
		}
	}
	private void reject(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid = request.getParameter("id");
		reservationService.delete(Integer.parseInt(sid));
		findByPage(request, response);
	}
}
