package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.LostService;
import service.LostServiceImplement;

@WebServlet("/lost/lostWrite")
public class LostWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LostWrite() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("lostWriteForm.jsp");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		try {
			LostService lostService = new LostServiceImplement();
			lostService.lostWrite(request);
			response.sendRedirect("lostBoard");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
