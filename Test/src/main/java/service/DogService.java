package service;

import javax.servlet.http.HttpServletRequest;

public interface DogService {
	void doginsert(HttpServletRequest request) throws Exception;
}