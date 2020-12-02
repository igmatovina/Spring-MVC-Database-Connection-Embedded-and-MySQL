package springmvc.java.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.java.dao.userDAO;
import springmvc.java.domain.User;
import springmvc.java.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired 
	private userDAO userDao;
	
	@Override
	public User findUserById(Long id) {
		// TODO Auto-generated method stub
		return userDao.findOne(id);
	} 

	@Override
	public User findUserWithBlogPostsByUsername(String username) {
		// TODO Auto-generated method stub
		return userDao.findUserByUsername(username);
	}

}
