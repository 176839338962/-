package yang.chen.blog.service;


import yang.chen.blog.entity.Blogger;

public interface BloggerService {
    /**根据用户名获取博主对象*/
    Blogger getBloggerByUserName(String paramString);
    /**更新博主信息*/
    Integer updateBlogger(Blogger paramBlogger);
    /**获取博主信息*/
    Blogger getBlogger();
}
