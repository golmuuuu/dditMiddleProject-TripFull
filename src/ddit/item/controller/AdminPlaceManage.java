package ddit.item.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;

/**
 * Servlet implementation class AdminPlaceManage
 */
@WebServlet("/AdminPlaceManage.do")
public class AdminPlaceManage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IItemService service = ItemServiceImpl.getInstance();
		
		Map<String, Object> map = service.getAllItems();
		
		request.setAttribute("allList", map);
		
		request.getRequestDispatcher("item/itemManage.jsp").forward(request, response);
		
	}

}
