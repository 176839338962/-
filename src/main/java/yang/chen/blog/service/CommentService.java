package yang.chen.blog.service;

import yang.chen.blog.entity.Comment;

import java.util.List;
import java.util.Map;


public interface CommentService {
    /**增加一条评论*/
    Integer add(Comment paramComment);
    /**更新一条评论*/
    Integer update(Comment paramComment);
    /**无参数查询所有评论*/
    List<Comment> getAllComments();
    /**带参数查询评论*/
    List<Comment> getComments(Map<String, Object> paramMap);
    /**无参数查询所有评论数量*/
    Integer getAllCommentsCount();
    /**带参数查询查询评论数量*/
    Long getCommentsCount(Map<String, Object> paramMap);
    /**删除一条评论*/
    Integer delete(Integer paramInteger);
}
