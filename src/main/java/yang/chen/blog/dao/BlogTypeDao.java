package yang.chen.blog.dao;
import yang.chen.blog.entity.BlogType;

import java.util.List;
import java.util.Map;
/**
 * 博客类型Dao接口
 * @author 盗名-欺世
 *
 */

public interface BlogTypeDao {
    /**无参数查询所有博客类型列表*/
    public List<BlogType> getBlogTypeWithoutParam();

    /**根据Id查询博客类型*/
    public BlogType getBlogTypeById(Integer paramInteger);

    /**不固定参数查询博客类型列表*/
    public List<BlogType> getBlogTypeByParam(Map<String, Object> paramMap);

    /**不固定参数查询博客类型数量*/
    public Long getBlogCount(Map<String, Object> paramMap);

    /**增加一条博客类型*/
    public Integer add(BlogType paramBlogType);

    /**修改一条博客类型*/
    public Integer update(BlogType paramBlogType);

    /**删除一条博客类型*/
    public Integer delete(Integer paramInteger);
}
