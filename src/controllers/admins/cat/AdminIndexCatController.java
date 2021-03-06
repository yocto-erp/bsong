package controllers.admins.cat;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.CatDAO;
import models.Category;
public class AdminIndexCatController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AdminIndexCatController() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		CatDAO catDao = new CatDAO();
		List<Category> catList = catDao.findAll();
		request.setAttribute("catList", catList);
		request.getRequestDispatcher("/views/admin/cat/index.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
