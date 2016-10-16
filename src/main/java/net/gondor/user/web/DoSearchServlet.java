package net.gondor.user.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.gondor.support.Param;

public class DoSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Param param = new Param();
    public DoSearchServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String val = param.getStringParam(request,"searchVal");
		PrintWriter out = response.getWriter();
		out.write(val);
		out.flush();
		out.close();
	}

}
