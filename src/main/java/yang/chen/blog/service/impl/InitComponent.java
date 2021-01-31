package yang.chen.blog.service.impl;

import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import yang.chen.blog.entity.Blog;
import yang.chen.blog.entity.BlogType;
import yang.chen.blog.entity.Blogger;
import yang.chen.blog.entity.Link;
import yang.chen.blog.service.BlogService;
import yang.chen.blog.service.BlogTypeService;
import yang.chen.blog.service.BloggerService;
import yang.chen.blog.service.LinkService;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;
/**
 * 项目启动初始化,预先加载部分资源
 * @author 盗名-欺世
 *
 */
@Component
public class InitComponent implements ServletContextListener, ApplicationContextAware {
    private static ApplicationContext applicationContext;

    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

    public void contextInitialized(ServletContextEvent sce) {
        //将博客类别放入缓存中
        ServletContext application = sce.getServletContext();
        BlogTypeService blogTypeService = (BlogTypeService)applicationContext.getBean("blogTypeService");
        List<BlogType> blogTypeList = blogTypeService.getBlogTypeWithoutParam();
        application.setAttribute("blogTypeList", blogTypeList);

        //按年月分类的博客数量
        BlogService blogService = (BlogService)applicationContext.getBean("blogService");
        List<Blog> blogCountList = blogService.getBlogWithoutParam();
        application.setAttribute("blogCountList", blogCountList);

        //友情链接列表
        LinkService linkService = (LinkService)applicationContext.getBean("linkService");
        List<Link> linkList = linkService.getLink(null);
        application.setAttribute("linkList", linkList);

        //博主信息
        BloggerService bloggerService = (BloggerService)applicationContext.getBean("bloggerService");
        Blogger blogger = bloggerService.getBlogger();
        blogger.setPassword(null);
        application.setAttribute("blogger", blogger);

        //博客列表

    }

    public void contextDestroyed(ServletContextEvent sce) {}
}
