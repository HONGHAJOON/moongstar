package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.FBoard;
import dto.Lost;
import dto.Temp;
import service.FreeService;
import service.FreeServiceImpl;
import service.LostService;
import service.LostServiceImplement;
import service.TempService;
import service.TempServiceImplement;


@WebServlet("/main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Main() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		try {
			FreeService freeService=new FreeServiceImpl();
			TempService tempService=new TempServiceImplement();
			LostService lostService=new LostServiceImplement();
			List<FBoard> frees=freeService.freeListOnMain();
			System.out.println(frees);
			List<Temp> temps=tempService.tempListOnMain();
			List<Lost> losts=lostService.lostlistOnMain();
			request.setAttribute("frees", frees);
			request.setAttribute("temps", temps);
			request.setAttribute("losts", losts);
			request.getRequestDispatcher("/main/main.jsp").forward(request, response);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
