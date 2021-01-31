package yang.chen.blog.dao;

/**
 * 博客文章Dao接口
 * @author 盗名-欺世
 *
 */
import yang.chen.blog.entity.Blogger;

public interface BloggerDao {
    /**根据登录名查询博主对象*/
    Blogger getBloggerByName(String paramString);

    /**更新博主个人信息*/
    Integer updateBlogger(Blogger paramBlogger);

    /**获取博主信息*/
    Blogger getBlogger();
}
