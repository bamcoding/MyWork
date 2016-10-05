package net.gondor.story.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.gondor.support.Param;

/**
 * Servlet implementation class ViewWrite
 */
public class ViewWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Param param = new Param();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewWriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String error = param.getStringParam(request, "error");
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/story/write.jsp");
		request.setAttribute("error", error);
		rd.forward(request, response);
	}

}
