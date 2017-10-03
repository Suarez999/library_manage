package me.xx.library.servlet;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import me.xx.library.entity.Book;
import me.xx.library.entity.Category;
import me.xx.library.service.BookService;
import me.xx.library.service.CategoryService;
import me.xx.library.service.impl.BookServiceImpl;
import me.xx.library.service.impl.CategoryServiceImpl;
import me.xx.library.utils.PageBean;
import sun.nio.cs.ext.DoubleByte.Decoder_EUC_SIM;

/**
 * Servlet implementation class BookServlet
 */
@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BookService bookService=new BookServiceImpl();
    private CategoryService categoryService=new CategoryServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method=request.getParameter("method");
		if(method.equals("add")){
			add(request, response);
		}else if(method.equals("list")){
			list(request, response);
			request.getRequestDispatcher("/library2.jsp").forward(request, response);
		}else if(method.equals("sysList")||method.equals("sysSearch")){
			list(request, response);
			request.getRequestDispatcher("/sys/detail/bookList.jsp").forward(request, response);
		}else if(method.equals("toadd")){
			toadd(request, response);
		}else if(method.equals("toupdate")){
			toupdate(request, response);
		}else if(method.equals("update")){
			update(request, response);
		}else if(method.equals("delete")){
			delete(request, response);
		}else if(method.equals("findById")){
			findById(request, response);
		}else if(method.equals("selectRemain")){
			selectRemain(request, response);
		}else if(method.equals("appSearch")){
			list(request, response);
			request.getRequestDispatcher("/library2.jsp").forward(request, response);
		}else if(method.equals("findBySubject")){
			findBySubject(request, response);
		}else if(method.equals("logout")){
			logout(request,response);
		}else if(method.equals("findNew")){
			findNew(request,response);
		}else if(method.equals("findHot")){
			findHot(request,response);
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
			throws ServletException, IOException {
		try {
			FileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setFileSizeMax(10 * 1024 * 1024); // 单个文件大小限制
			upload.setSizeMax(50 * 1024 * 1024); // 总文件大小限制
			upload.setHeaderEncoding("UTF-8"); // 对中文文件编码处理

			if (upload.isMultipartContent(request)) {

				Book book=new Book();
				List<FileItem> list = upload.parseRequest(request);
				for (FileItem item : list) {

					if (item.isFormField()) {// 普通本文内容
						String name = item.getFieldName();
						// 获取值
						String value = item.getString();
						value = new String(value.getBytes("ISO-8859-1"),
								"UTF-8");
						BeanUtils.setProperty(book, name, value);
					} else {// 上传内容
						String fieldName = item.getFieldName();
						String path = request.getSession().getServletContext()
								.getRealPath("/upload");
						File f = new File(path);
						if (!f.exists()) {
							f.mkdir();
						}
						// 全部绝对路径
						String name = item.getName();

						BeanUtils
								.setProperty(book, fieldName, "upload/" + name);

						// a2. 拼接文件名
						File file = new File(path, name);
						// d. 上传
						if(!file.isDirectory()){
							item.write(file);
						}
						item.delete(); // 删除组件运行时产生的临时文件
					}
				}
				bookService.add(book);
				list(request, response);
				request.getRequestDispatcher("/sys/detail/bookList.jsp").forward(request, response);
			} else {
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void list(HttpServletRequest request, HttpServletResponse response)
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
		bookService.findByPage(pb);
		request.setAttribute("pb",pb);	
	}
	
	public void toadd(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		List<Category> list = categoryService.getAll();
		request.setAttribute("catList",list);
		request.getRequestDispatcher("/sys/detail/saveBook.jsp").forward(request, response);
	}
	
	public void toupdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid = request.getParameter("id");
		Book book = bookService.findById(Integer.parseInt(sid));
		List<Category> list = categoryService.getAll();
		request.setAttribute("catList",list);
		request.setAttribute("book",book);
		request.getRequestDispatcher("/sys/detail/updateBook.jsp").forward(request, response);
	}
	private void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			FileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setFileSizeMax(10 * 1024 * 1024); // 单个文件大小限制
			upload.setSizeMax(50 * 1024 * 1024); // 总文件大小限制
			upload.setHeaderEncoding("UTF-8"); // 对中文文件编码处理

			if (upload.isMultipartContent(request)) {

				Book book = new Book();
				List<FileItem> list = upload.parseRequest(request);
				for (FileItem item : list) {

					if (item.isFormField()) {// 普通本文内容
						String name = item.getFieldName();
						// 获取值
						String value = item.getString();
						value = new String(value.getBytes("ISO-8859-1"),
								"UTF-8");
						BeanUtils.setProperty(book, name, value);
					} else {// 上传内容
						String fieldName = item.getFieldName();
						String path = getServletContext()
								.getRealPath("/upload");
						File f = new File(path);
						if (!f.exists()) {
							f.mkdir();
						}
						String name = item.getName();
						if(name!=null && !"".equals(name.trim())){
							BeanUtils.setProperty(book, fieldName,
									("upload/" + name));
	
							// a2. 拼接文件名
							File file = new File(path, name);
							// d. 上传
							if (!file.isDirectory()) {
								item.write(file);
							}
							item.delete(); // 删除组件运行时产生的临时文件
						}else{
							int id = book.getId();
							String img =bookService.findById(id).getImageUrl();
							BeanUtils.setProperty(book, "imageUrl",img);
						}
					}
				}
				bookService.updateById(book);
			} else {

			}
			list(request, response);
			request.getRequestDispatcher("/sys/detail/bookList.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();	
		}
	}
	private void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid=request.getParameter("id");
		bookService.deleteById(Integer.parseInt(sid));
		list(request, response);
		request.getRequestDispatcher("/sys/detail/bookList.jsp").forward(request, response);
	}
	
	private void findById(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid = request.getParameter("id");
		Book book = bookService.findById(Integer.parseInt(sid));
		request.setAttribute("book",book);
		request.getRequestDispatcher("/app/bookinfo.jsp").forward(request, response);
	}
	
	private void selectRemain(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String sid = request.getParameter("id");
		Book book = bookService.findById(Integer.parseInt(sid));
		Integer remain = book.getRemain();
		if(remain<1){
			response.getWriter().print("No remain!");
			response.getWriter().flush();
			response.getWriter().close();
		}
	}
	
	private void findBySubject(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String currPage=request.getParameter("currentPage");
		String keyWord=request.getParameter("keyWord");
		
		keyWord =new String(keyWord.getBytes("iso-8859-1"),"utf-8");
		if(currPage==null||"".equals(currPage)||Integer.parseInt(currPage)<1){
			currPage="1";
		}
		int page = Integer.parseInt(currPage);
		PageBean<Book> pb=new PageBean<>();
		pb.setCurrentPage(page);
		pb.setKeyWord(keyWord);
		bookService.findBySubject(pb);
		request.setAttribute("pb",pb);	
		request.getRequestDispatcher("/library2.jsp").forward(request, response);
	}
	
	private void logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		request.getSession().removeAttribute("userName");
		list(request, response);
		request.getRequestDispatcher("/library2.jsp").forward(request, response);
	}
	
	private void findNew(HttpServletRequest request, HttpServletResponse response)
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
	
	private void findHot(HttpServletRequest request, HttpServletResponse response)
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
}
