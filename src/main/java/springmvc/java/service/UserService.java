package springmvc.java.service;

import springmvc.java.domain.User;

public interface UserService {

	User findUserById(Long id);
	User findUserWithBlogPostsByUsername(String username);
	
}
