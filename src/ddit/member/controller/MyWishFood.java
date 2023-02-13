package ddit.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.member.service.IMemberService;
import ddit.member.service.MemberServiceImpl;
import ddit.vo.FoodVO;
import ddit.vo.TripVO;

@WebServlet("/MyWishFood.do")
public class MyWishFood extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		IMemberService service = MemberServiceImpl.getService();
		String member_id = request.getParameter("member_id");
		List<FoodVO> list =service.member_mywish_food(member_id); 
		request.setAttribute("list", list);
		request.getRequestDispatcher("member/wish/MyWishFood.jsp").forward(request, response);
	}

}
