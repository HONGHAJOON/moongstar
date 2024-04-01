package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.TempService;
import service.TempServiceImplement;

@WebServlet("/temp/tempWrite")
public class TempWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TempWrite() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("tempWriteForm.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		try {
			TempService tempService=new TempServiceImplement();
			tempService.tempWrite(request);
			response.sendRedirect("tempBoard");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
