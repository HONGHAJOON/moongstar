package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.Comment;
import dto.Temp;

public interface TempService {
	void tempListByPage (HttpServletRequest request) throws Exception;
	Temp tempDetail(Integer tempNum) throws Exception;
	void tempWrite(HttpServletRequest request) throws Exception;
	void tempModify(HttpServletRequest request) throws Exception;
	void tempDelete(Integer tempNum) throws Exception;
	List<Comment> tempCommentList(Integer tempNum) throws Exception;
	String getTempNick(String memId) throws Exception;
}
