package springmvc.java.service.impl;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import springmvc.java.domain.BlogPost;
import springmvc.java.domain.User;
import springmvc.java.service.BlogPostService;


public class WordPressBlogPostImpl implements BlogPostService {

	private static final Logger LOGGER =LoggerFactory.getLogger(WordPressBlogPostImpl.class);
 
	
	@Override
	public void savePost(BlogPost blogPost) {
		LOGGER.debug("WordPressBlogPostImpl: BlogPost is called");		
	}


	@Override
	public void saveAsDraft(BlogPost blogPost) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void deletePost(BlogPost blogPost) {
		// TODO Auto-generated method stub
		
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
		return null;
	}
	
	
}