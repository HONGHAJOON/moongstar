package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dto.fBoard;
import service.FreeService;
import service.FreeServiceImpl;

/**
 * Servlet implementation class FreeDetail
 */
@WebServlet("/freeBoard/boarddetail")
public class FreeDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreeDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	    Integer num = Integer.parseInt(request.getParameter("num"));
	    try {
	        FreeService boardService = new FreeServiceImpl();
	        fBoard board = (fBoard) boardService.freeDetail(num);
	        request.setAttribute("board", board);
	        
	        // forward 이전에 파일을 열도록 이동합니다.
	        String pnum = request.getParameter("num");
	        String path = request.getServletContext().getRealPath("upload");
	        FileInputStream fis = new FileInputStream(new File(path, pnum));
	        OutputStream out = response.getOutputStream();
	        byte[] buff = new byte[4096];
	        int len = 0;
	        while ((len = fis.read(buff)) > 0) {
	            out.write(buff, 0, len);
	        }
	        fis.close();
	        
	        request.getRequestDispatcher("boarddetail.jsp").forward(request, response);
	    } catch (Exception e) {
	        e.printStackTrace();
	        request.setAttribute("err", "게시글 조회 실패");
	        request.getRequestDispatcher("error.jsp").forward(request, response);
	        return; // 예외 처리 후에는 더 이상 진행하지 않도록 메서드를 종료합니다.
	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}