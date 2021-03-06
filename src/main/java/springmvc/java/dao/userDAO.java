package springmvc.java.dao;

import org.springframework.data.repository.CrudRepository;

import springmvc.java.domain.User;

public interface userDAO extends CrudRepository<User, Long>{
	
	User findUserByUsername(String username);
}
