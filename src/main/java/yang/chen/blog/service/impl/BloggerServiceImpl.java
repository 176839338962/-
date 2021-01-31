package yang.chen.blog.service.impl;

import yang.chen.blog.dao.BloggerDao;
import yang.chen.blog.entity.Blogger;
import yang.chen.blog.service.BloggerService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("bloggerService")
public class BloggerServiceImpl implements BloggerService {
    @Autowired
    private BloggerDao bloggerDao;

    public Blogger getBloggerByUserName(String username) {
        System.out.println("BloggerController: " + username);
        return this.bloggerDao.getBloggerByName(username);
    }

    public Integer updateBlogger(Blogger blogger) {
        SecurityUtils.getSubject().getSession().setAttribute("currentUser", blogger);
        return this.bloggerDao.updateBlogger(blogger);
    }

    public Blogger getBlogger() {
        return this.bloggerDao.getBlogger();
    }
}
