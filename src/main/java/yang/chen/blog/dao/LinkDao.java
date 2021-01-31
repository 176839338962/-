package yang.chen.blog.dao;

import yang.chen.blog.entity.Link;

import java.util.List;
import java.util.Map;
/**
 * 友情链接Dao接口
 * @author 盗名-欺世
 *
 */

public interface LinkDao {
    /**带参数查询指定链接*/
    public Link findById(Integer paramInteger);
    /**带参数查询所有链接*/
    public List<Link> getLink(Map<String, Object> paramMap);
    /**带参数查询链接总数*/
    public Long getLinkCount(Map<String, Object> paramMap);
    /**新增一条链接*/
    public Integer add(Link paramLink);
    /**删除一条链接*/
    public Integer delete(Integer paramInteger);
    /**修改一条链接*/
    public Integer update(Link paramLink);
}
