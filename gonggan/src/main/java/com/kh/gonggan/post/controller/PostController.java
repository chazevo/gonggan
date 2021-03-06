package com.kh.gonggan.post.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Calendar;
import java.util.List;

import org.json.JSONString;
/*
import org.json.JSONArray;
import org.json.JSONObject;
*/
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.gonggan.post.model.service.PostService;
import com.kh.gonggan.post.model.vo.Post;

@Controller
public class PostController {
	
	//메소드가 controller가 됨 컨트롤러를 메소드 단위로 작성하면 된다.
	//공통으로 사용하는 것은 common에 넣어놓으면 됨
	@Autowired
	private PostService postService;
	
	@RequestMapping(value="/postlist.do", produces={"application/json"}, method=RequestMethod.GET)
		@ResponseBody
		public String selectList(){
			/*		String userId =request.getParameter("userid");
			String userPwd =request.getParameter("userpwd");
			Member member =new Member();
			member.setUserid(userId);
			member.setUserpwd(userPwd);*/
			
			List<Post> plist  = postService.selectList();
	
			JSONObject json = new JSONObject();
			JSONArray jarr = new JSONArray();
			
			for(Post p : plist) {
				
				JSONObject job = new JSONObject();
				
				Calendar cal = Calendar.getInstance();
				cal.setTime(p.getPostDate());
				
				job.put("postId", p.getPostId() + "");
				job.put("writerId", p.getWriterId());
				try {
					job.put("category", URLEncoder.encode(
							p.getCategory(), "UTF-8"));
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
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
			
			//ModelAndView mv = new ModelAndView();
			/*
			mv.setViewName("home");
			mv.addObject("loginUser", loginUser);
			*/
			
			/*return "home";*/
			//return mv;
			return json.toJSONString();
		}
}
