package me.xx.library.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.dbutils.QueryRunner;

import me.xx.library.entity.Book;
import me.xx.library.entity.BorrowBook;
import me.xx.library.entity.Recommend;
import me.xx.library.service.BorrowBookService;
import me.xx.library.service.RecommendService;
import me.xx.library.service.impl.BorrowBookServiceImpl;
import me.xx.library.service.impl.RecommendServiceImpl;
import me.xx.library.utils.JdbcUtils;
import me.xx.library.utils.PageBean;

/**
 * Servlet implementation class RecommendServlet
 */
@WebServlet("/RecommendServlet")
public class RecommendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private RecommendService recommendService=new RecommendServiceImpl();  
    private BorrowBookService borrowService=new BorrowBookServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecommendServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String method = request.getParameter("method");
		if(method.equals("add")){
			add(request, response);
		}else if(method.equals("listRecommend")){
			listRecommend(request, response);
		}else if(method.equals("getAll")){
			getAll(request,response);
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
		String sid=request.getParameter("id");
		BorrowBook borrowBook = borrowService.findById(Integer.parseInt(sid));
		Recommend recommend=new Recommend();
		recommend.setBook_name(borrowBook.getBook_name());
		recommend.setAuthor(borrowBook.getAuthor());
		recommend.setIsbn(borrowBook.getIsbn());
		recommend.setProduct(borrowBook.getProduct());
		recommend.setUsername(borrowBook.getUsername());
		recommend.setBook_id(borrowBook.getBook_id());
		recommendService.add(recommend);
		response.getWriter().println("completed!");
		response.getWriter().flush();
		response.getWriter().close();
	}
	private void listRecommend(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String userName = (String) request.getSession().getAttribute("userName");
		List<Recommend> list = recommendService.getAll(userName);
		request.setAttribute("list",list);
		request.getRequestDispatcher("/app/recommend.jsp").forward(request, response);
	}
	private void getAll(HttpServletRequest request, HttpServletResponse response)
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
