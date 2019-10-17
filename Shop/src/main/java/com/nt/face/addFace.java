package com.nt.face;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addFace
 */
@WebServlet("/addFace")
public class addFace extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addFace() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String despath = request.getParameter("message");
		
		faceSearch search = new faceSearch();
		String result = search.search(despath);
//		String score = result.split(",")[5].split(":")[1];
		String[] resultList = result.split(",");
        String score="0";
        if(resultList.length>=9) {
        	score=resultList[9].split(":")[1];
        }
		if(score.length()==5) {
			request.getSession().setAttribute("facePath",despath);
			response.getWriter().println(despath);
			return;
		}
		int scoreMatch = Integer.parseInt(score.split("\\.")[0]);
		if(scoreMatch>80){
			request.getSession().setAttribute("facePath","");
			response.getWriter().print("EXIST!");
		}else {
			request.getSession().setAttribute("facePath",despath);
//			faceAdd add = new faceAdd();
//			String score = add.add(despath);
//			System.out.println("addFace+++"+score);
			response.getWriter().println(despath);
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
