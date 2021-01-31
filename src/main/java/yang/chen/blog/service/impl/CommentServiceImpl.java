package yang.chen.blog.service.impl;

import java.util.List;
import java.util.Map;

import yang.chen.blog.dao.CommentDao;
import yang.chen.blog.entity.Comment;
import yang.chen.blog.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("commentService")
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentDao dao;

    public Integer add(Comment comment) {
        return this.dao.add(comment);
    }

    public Integer update(Comment comment) {
        return this.dao.update(comment);
    }

    public List<Comment> getAllComments() {
        return this.dao.getAllComments();
    }

    public List<Comment> getComments(Map<String, Object> map) {
        return this.dao.getComments(map);
    }

    public Integer getAllCommentsCount() {
        return this.dao.getAllCommentsCount();
    }

    public Long getCommentsCount(Map<String, Object> map) {
        return this.dao.getCommentsCount(map);
    }

    public Integer delete(Integer id) {
        return this.dao.delete(id);
    }
}
