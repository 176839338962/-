package yang.chen.blog.service;

import yang.chen.blog.entity.BlogType;

import java.util.List;
import java.util.Map;


public interface BlogTypeService {
    /**无参数查询所有博客类型列表*/
    List<BlogType> getBlogTypeWithoutParam();
    /**根据Id查询博客类型*/
    BlogType getBlogTypeById(Integer paramInteger);
    /**不固定参数查询博客类型列表*/
    List<BlogType> getBlogTypeByParam(Map<String, Object> paramMap);
    /**不固定参数查询博客类型数量*/
    Long getBlogCount(Map<String, Object> paramMap);
    /**增加一条博客类型*/
    Integer add(BlogType paramBlogType);
    /**修改一条博客类型*/
    Integer update(BlogType paramBlogType);
    /**删除一条博客类型*/
    Integer delete(Integer paramInteger);
}
