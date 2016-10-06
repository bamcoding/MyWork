package net.gondor.story.web.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.gondor.story.biz.StoryBiz;
import net.gondor.story.biz.StoryBizImpl;
import net.gondor.support.Param;

public class DolikeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StoryBiz biz;
	Param param = new Param();
	public DolikeServlet() {
		super();
		biz = new StoryBizImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = param.getStringParam(request, "id");
		
		//int likeCount = biz.updateLikeCount(id);
		boolean likeCount = biz.updateLikeCount(id);
		
		PrintWriter out = response.getWriter();
		out.print( likeCount + "");
		out.flush();
		out.close();
	}
}
