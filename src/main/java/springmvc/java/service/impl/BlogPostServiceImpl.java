package springmvc.java.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import springmvc.java.dao.BlogPostDAO;
import springmvc.java.domain.BlogPost;
import springmvc.java.domain.User;
import springmvc.java.service.BlogPostService;

public class BlogPostServiceImpl implements BlogPostService {
	
	private static final Logger LOGGER =LoggerFactory.getLogger(BlogPostServiceImpl.class);
	
	@Autowired
	private BlogPostDAO blogPostDAO;
	

	//@Autowired
	//private EmailService emailService;

	@Override
	public void savePost(BlogPost blogPost) {
		LOGGER.debug("BlogPostServiceImpl: savepost is called");
		blogPost.setPublishDate(new Date());
		blogPostDAO.save(blogPost);
		//emailService.SendEmail();
	}

	@Override
	public void saveAsDraft(BlogPost blogPost) {
		blogPost.setDraft(true);
		blogPostDAO.save(blogPost);
	}

	@Override
	public void deletePost(BlogPost blogPost) {
		blogPostDAO.delete(blogPost);

	}

	@Override
	public List<BlogPost> listAllBlogPostsByUserAndDraftStatus(User user, boolean draft) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BlogPost> listAllBlogPostsByUserAndTitleLike(User user, String title) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Optional<BlogPost> findBlogPostById(long id) {
		// TODO Auto-generated method stub
		 return Optional.of(blogPostDAO.findOne(id));
	}

}
