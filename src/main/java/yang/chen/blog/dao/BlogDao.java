package yang.chen.blog.dao;

import yang.chen.blog.entity.Blog;

import java.util.List;
import java.util.Map;
/**
 * 博客博主Dao接口
 * @author 盗名-欺世
 *
 */

public interface BlogDao {
    /**无参数查询所有博客列表*/
    List<Blog> getBlogWithoutParam();

    /**根据Id查询博客*/
    Blog getBlogById(Integer paramInteger);

    /**不固定参数查询博客列表*/
    List<Blog> getBlogByParam(Map<String, Object> paramMap);

    /**不固定参数查询博客数量*/
    Long getBlogCount(Map<String, Object> paramMap);

    /**增加一条博客*/
    Integer add(Blog paramBlog);

    /**修改一条博客*/
    Integer update(Blog paramBlog);

    /**删除一条博客*/
    Integer delete(Integer paramInteger);

    /**根据博客类型查询对应的博客数量*/
    Integer getBlogCountByBlogType(Integer paramInteger);

    /**上一篇*/
    Blog getPreviousBlog(Integer paramInteger);

    /**下一篇*/
    Blog getNextBlog(Integer paramInteger);
}
