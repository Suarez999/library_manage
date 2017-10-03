package me.xx.library.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import me.xx.library.service.BookService;
import me.xx.library.service.BorrowBookService;
import me.xx.library.service.impl.BookServiceImpl;
import me.xx.library.service.impl.BorrowBookServiceImpl;
import me.xx.library.utils.PageBean;

/**
 * Servlet implementation class BorrowbookServlet
 */
@WebServlet("/BorrowbookServlet")
public class BorrowbookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BorrowBookService borrowBookService=new BorrowBookServiceImpl();
    private BookService bookService=new BookServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BorrowbookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method=request.getParameter("method");
		if(method.equals("findHistoryBorrow")){
			findHistoryBorrow(request, response);
		}else if(method.equals("renew")){
			renew(request, response);
		}else if(method.equals("getBorrowBooks")){
			getBorrowBooks(request, response);
		}else if(method.equals("returnBook")){
			returnBook(request, response);
		}else if(method.equals("payFine")){
			payFine(request, response);
		}else if(method.equals("findOverdue")){
			findOverdue(request, response);
		}else if(method.equals("getBorrowHistory")){
			getBorrowHistory(request, response);
		}else if(method.equals("lost")){
			lost(request, response);
		}else if(method.equals("payBook")){
			payBook(request, response);
		}else if(method.equals("payLost")){
			payLost(request,response);
		}else if(method.equals("findLost")){
			findLost(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void findHistoryBorrow(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String userName=(String) request.getSession().getAttribute("userName");
		List<BorrowBook> list = borrowBookService.findHistoryByUsername(userName);
		request.setAttribute("list",list);
		request.getRequestDispatcher("/app/borrowhistory.jsp").forward(request, response);
	}

	private void renew(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid = request.getParameter("id");
		BorrowBook book = borrowBookService.findById(Integer.parseInt(sid));
		if(new Date().compareTo(book.getExpiration_date())>0){
			response.getWriter().println("No");
			response.getWriter().flush();
			response.getWriter().close();
		}else{
			Date date = book.getExpiration_date();
			Calendar calendar=new GregorianCalendar(); 
			calendar.setTime(date);
			calendar.add(calendar.MONTH,1);
			Date date2 = calendar.getTime();
			book.setExpiration_date(date2);
			borrowBookService.Renew(book);
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			  String dateString = formatter.format(book.getExpiration_date());
			response.getWriter().println(dateString);
			response.getWriter().flush();
			response.getWriter().close();
		}
	}
	private void getBorrowBooks(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String currPage=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		if(currPage==null||"".equals(currPage)||Integer.parseInt(currPage)<1){
			currPage="1";
		}
		int page = Integer.parseInt(currPage);
		PageBean<BorrowBook> pb=new PageBean<>();
		pb.setCurrentPage(page);
		pb.setKeyWord(keyWord);
		borrowBookService.findByPage(pb,1);
		request.setAttribute("pb",pb);	
		request.getRequestDispatcher("/librarian/detail/returnList.jsp").forward(request, response);
	}
	
	private void returnBook(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid = request.getParameter("id");
		String bookId=request.getParameter("book_id");
		BorrowBook book = borrowBookService.findById(Integer.parseInt(sid));
		if(new Date().compareTo(book.getExpiration_date())>0){
			request.setAttribute("tip","The book is overdue.Cannot return!You should pay for it!");
			getBorrowBooks(request, response);
		}else{
			BorrowBook borrowBook=new BorrowBook();
			borrowBook.setId(Integer.parseInt(sid));
			borrowBook.setReturn_date(new Date());
			borrowBookService.returnBook(borrowBook);
			Book book2 = bookService.findById(Integer.parseInt(bookId));
			book2.setRemain(book2.getRemain()+1);
			bookService.updateById(book2);
			getBorrowBooks(request, response);
		}
	}
	
	private void payFine(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String currPage=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		if(currPage==null||"".equals(currPage)||Integer.parseInt(currPage)<1){
			currPage="1";
		}
		int page = Integer.parseInt(currPage);
		PageBean<BorrowBook> pb=new PageBean<>();
		pb.setCurrentPage(page);
		pb.setKeyWord(keyWord);
		borrowBookService.findFineByPage(pb, 1);;
		List<BorrowBook> list = pb.getPageData();
		for(BorrowBook book:list){
			Date date=new Date();
			Date date2 = book.getExpiration_date();
			long day=((date.getTime()-date2.getTime()))/(1000 * 60 * 60 * 24);
			book.setFine(String.valueOf(day));
			borrowBookService.updateFine(book);
		}
//		List<BorrowBook> pageData = pb.getPageData();
//		List<BorrowBook> bookList=new ArrayList<>();
//		BorrowBook book=null;
//		Integer count=0;
//		for(BorrowBook borrowBook:pageData){
//			if(new Date().compareTo(borrowBook.getExpiration_date())>0){
//				count++;
//				book=new BorrowBook();
//				book.setId(borrowBook.getId());
//				book.setBook_name(borrowBook.getBook_name());
//				book.setUsername(borrowBook.getUsername());
//				book.setAuthor(borrowBook.getAuthor());
//				book.setBorrow_date(borrowBook.getBorrow_date());
//				book.setState(borrowBook.getState());
//				book.setExpiration_date(borrowBook.getExpiration_date());
//				book.setIsbn(borrowBook.getIsbn());
//				book.setProduct(borrowBook.getProduct());
//				Date date=new Date();
//				Date date2 = borrowBook.getExpiration_date();
////				String formatDate = null;  
////		        formatDate = DateFormat.getDateInstance().format(date);  
////		        String formatDate2 = null;  
////		        formatDate2 = DateFormat.getDateInstance().format(date2);  
////		        SimpleDateFormat format=new SimpleDateFormat("yyyy-mm-dd");
////		        try {
////					date=format.parse(formatDate);
////					date2=format.parse(formatDate2);
////					System.out.println(date);
////				} catch (ParseException e) {
////					// TODO Auto-generated catch block
////					e.printStackTrace();
////				}
//				long day=((date.getTime()-date2.getTime()))/(1000 * 60 * 60 * 24);
//				System.out.println(day);
				
//				book.setFine(String.valueOf(day));
//				borrowBookService.updateFine(book);
//				bookList.add(book);
//			}
//		}
//		pb.setPageData(bookList);
//		pb.setTotalCount(count);
		request.setAttribute("pb",pb);	
		request.getRequestDispatcher("/librarian/detail/fineList.jsp").forward(request, response);
	}
	
	private void findOverdue(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String userName=(String) request.getSession().getAttribute("userName");
		List<BorrowBook> list = borrowBookService.findOverdue(userName);
		request.setAttribute("list",list);
		request.getRequestDispatcher("/app/overdue.jsp").forward(request, response);
	}
	
	private void getBorrowHistory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String currPage=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		if(currPage==null||"".equals(currPage)||Integer.parseInt(currPage)<1){
			currPage="1";
		}
		int page = Integer.parseInt(currPage);
		PageBean<BorrowBook> pb=new PageBean<>();
		pb.setCurrentPage(page);
		pb.setKeyWord(keyWord);
		borrowBookService.findByPage(pb,0);
		request.setAttribute("pb",pb);	
		request.getRequestDispatcher("/librarian/detail/borrowHistory.jsp").forward(request, response);
	}
	
	private void lost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid = request.getParameter("id");
		String book_id=request.getParameter("book_id");
		BorrowBook borrowBook = borrowBookService.findById(Integer.parseInt(sid));
		Book book = bookService.findById(Integer.parseInt(book_id));
		request.setAttribute("borrowBook",borrowBook);
		request.setAttribute("price",book.getPrice());
		request.getRequestDispatcher("/librarian/detail/finedetail.jsp").forward(request, response);
	}
	
	private void payBook(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid = request.getParameter("id");
		borrowBookService.payBook(Integer.parseInt(sid));
		payFine(request, response);
	}
	
	private void payLost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid = request.getParameter("id");
		borrowBookService.payLost(Integer.parseInt(sid));
		getBorrowBooks(request, response);
	}
	
	private void findLost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String userName=(String) request.getSession().getAttribute("userName");
		List<BorrowBook> list = borrowBookService.findLost(userName);
		request.setAttribute("list",list);
		request.getRequestDispatcher("/app/lostbooks.jsp").forward(request, response);
	}
}
