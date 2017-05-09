package com.kh.gonggan.comment.model.service;

import com.kh.gonggan.comment.model.vo.Comment;

public interface CommentService {

	int insertComment(Comment comment);
	
	int deleteComment(int commentNum);

	int updateComment(Comment comment);
}
