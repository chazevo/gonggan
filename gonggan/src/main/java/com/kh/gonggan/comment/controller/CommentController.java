package com.kh.gonggan.comment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.gonggan.comment.model.service.CommentService;
import com.kh.gonggan.comment.model.vo.Comment;

@Controller
@RequestMapping("member")
public class CommentController {
	//메소드가 controller가 됨 컨트롤러를 메소드 단위로 작성하면 된다.
	//공통으로 사용하는 것은 common에 넣어놓으면 됨
	@Autowired
	private CommentService commentService;
	
	@RequestMapping("coinsert.do")
	public ModelAndView memberInsert(@ModelAttribute Comment comment, Model model){
		int insertComm = commentService.insertComment(comment);
		return null;
	}//회원가입
	
	@RequestMapping("coupdate.do")
	public ModelAndView commentUpdate(@RequestParam Comment comment) {
		int updateComm = commentService.updateComment(comment);
		return null;
	}//회원 수정
	
	@RequestMapping("codelete.do")
	public String commentDelete(@RequestParam int comment_num, Model model){
		int deleteComm = commentService.deleteComment(comment_num);
		return null;
	}//회원 삭제

}
