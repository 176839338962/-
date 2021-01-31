package yang.chen.blog.service;

import yang.chen.blog.entity.Link;

import java.util.List;
import java.util.Map;


public interface LinkService {
    /**带参数查询所有链接*/
    List<Link> getLink(Map<String, Object> paramMap);
    /**带参数查询链接总数*/
    Long getLinkCount(Map<String, Object> paramMap);
    /**新增一条链接*/
    Integer add(Link paramLink);
    /**删除一条链接*/
    Integer delete(Integer paramInteger);
    /**修改一条链接*/
    Integer update(Link paramLink);
}
