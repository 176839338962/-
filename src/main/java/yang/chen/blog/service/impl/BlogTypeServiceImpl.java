package yang.chen.blog.service.impl;

import java.util.List;
import java.util.Map;

import yang.chen.blog.dao.BlogTypeDao;
import yang.chen.blog.entity.BlogType;
import yang.chen.blog.service.BlogTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("blogTypeService")
public class BlogTypeServiceImpl implements BlogTypeService {
    @Autowired
    private BlogTypeDao dao;

    public List<BlogType> getBlogTypeWithoutParam() {
        return this.dao.getBlogTypeWithoutParam();
    }

    public BlogType getBlogTypeById(Integer id) {
        return this.dao.getBlogTypeById(id);
    }

    public List<BlogType> getBlogTypeByParam(Map<String, Object> map) {
        return this.dao.getBlogTypeByParam(map);
    }

    public Long getBlogCount(Map<String, Object> map) {
        return this.dao.getBlogCount(map);
    }

    public Integer add(BlogType blogType) {
        return this.dao.add(blogType);
    }

    public Integer update(BlogType blogType) {
        return this.dao.update(blogType);
    }

    public Integer delete(Integer id) {
        return this.dao.delete(id);
    }
}
