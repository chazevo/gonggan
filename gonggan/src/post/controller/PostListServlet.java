package post.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import post.model.dao.PostDao;
import post.model.vo.Post;

/**
 * Servlet implementation class PostListServlet
 */
@WebServlet("/PostListServlet")
public class PostListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.setContentType("application/json: charset=utf-8");
		PrintWriter out = response.getWriter();
		
		List<Post> plist = null;
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		plist = new PostDao().selectAll();
		
		for(Post p : plist) {
			
			JSONObject job = new JSONObject();
			
			Calendar cal = Calendar.getInstance();
			cal.setTime(p.getPostDate());
			
			job.put("postId", p.getPostId() + "");
			job.put("writerId", p.getWriterId());
			job.put("category", URLEncoder.encode(
					p.getCategory(), "UTF-8"));
			job.put("sharYn", p.getSharYn());
			job.put("openYn", p.getOpenYn());
			job.put("goodCnt", p.getGoodCnt() + "");
			job.put("photoPath", p.getPhotoPath());
			job.put("year", cal.get(Calendar.YEAR) + "");
			job.put("month", (cal.get(Calendar.MONTH) + 1) + "");
			job.put("date", cal.get(Calendar.DATE) + "");

			jarr.add(job);
		}
		json.put("list", jarr);
		out.print(json.toJSONString());

		out.flush();
		out.close();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
