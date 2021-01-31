package yang.chen.blog.dao;

import yang.chen.blog.entity.Comment;

import java.util.List;
import java.util.Map;
/**
 * 博客评论Dao接口
 * @author 盗名-欺世
 *
 */
public interface CommentDao {
    /**增加一条评论*/
    public Integer add(Comment paramComment);
    /**更新一条评论*/
    public Integer update(Comment paramComment);
    /**无参数查询所有评论*/
    public List<Comment> getAllComments();
    /**带参数查询评论*/
    public List<Comment> getComments(Map<String, Object> paramMap);
    /**无参数查询所有评论数量*/
    public Integer getAllCommentsCount();
    /**带参数查询查询评论数量*/
    public Long getCommentsCount(Map<String, Object> paramMap);
    /**删除一条评论*/
    public Integer delete(Integer paramInteger);
    /**根据博客ID删除评论*/
    public Integer deleteCommentByBlogId(Integer paramInteger);
}
