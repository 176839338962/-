package yang.chen.blog.service.impl;

import java.util.List;
import java.util.Map;

import yang.chen.blog.dao.BlogDao;
import yang.chen.blog.dao.CommentDao;
import yang.chen.blog.entity.Blog;
import yang.chen.blog.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("blogService")
public class BlogServiceImpl implements BlogService {
    @Autowired
    private BlogDao dao;

    @Autowired
    private CommentDao commentDao;

    public List<Blog> getBlogWithoutParam() {
        return this.dao.getBlogWithoutParam();
    }

    public Blog getBlogById(Integer id) {
        return this.dao.getBlogById(id);
    }

    public List<Blog> getBlogByParam(Map<String, Object> map) {
        return this.dao.getBlogByParam(map);
    }

    public Long getBlogCount(Map<String, Object> map) {
        return this.dao.getBlogCount(map);
    }

    public Integer add(Blog blog) {
        return this.dao.add(blog);
    }

    public Integer update(Blog blog) {
        return this.dao.update(blog);
    }
    //先删除对应评论再删除博客
    public Integer delete(Integer id) {
        this.commentDao.deleteCommentByBlogId(id);
        return this.dao.delete(id);
    }
    @Override
    public Integer getBlogCountByBlogType(Integer blogTypeId) {
        return this.dao.getBlogCountByBlogType(blogTypeId);
    }
    @Override
    public Blog getPreviousBlog(Integer id) {
        return this.dao.getPreviousBlog(id);
    }
    @Override
    public Blog getNextBlog(Integer id) {
        return this.dao.getNextBlog(id);
    }
}
