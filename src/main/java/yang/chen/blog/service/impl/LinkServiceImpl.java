package yang.chen.blog.service.impl;

import java.util.List;
import java.util.Map;

import yang.chen.blog.dao.LinkDao;
import yang.chen.blog.entity.Link;
import yang.chen.blog.service.LinkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 友情链接服务实现类
 * @author 盗名-欺世
 *
 */

@Service("linkService")
public class LinkServiceImpl implements LinkService {
    @Autowired
    private LinkDao linkDao;

    @Override
    public List<Link> getLink(Map<String, Object> map) {
        return this.linkDao.getLink(map);
    }

    @Override
    public Long getLinkCount(Map<String, Object> map) {
        return this.linkDao.getLinkCount(map);
    }

    @Override
    public Integer add(Link link) {
        return this.linkDao.add(link);
    }

    @Override
    public Integer delete(Integer id) {
        return this.linkDao.delete(id);
    }

    @Override
    public Integer update(Link link) {
        return this.linkDao.update(link);
    }
}
