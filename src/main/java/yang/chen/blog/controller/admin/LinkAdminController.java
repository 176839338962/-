package yang.chen.blog.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;

import yang.chen.blog.entity.Link;
import yang.chen.blog.entity.PageBean;
import yang.chen.blog.service.LinkService;
import yang.chen.blog.util.ResponseUtil;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 友情链接
 * @author 盗名-欺世
 */
@Controller
@RequestMapping({"/admin/link"})
public class LinkAdminController {
    @Autowired
    private LinkService linkService;
    /**
     * 获取友情链接列表
     */
    @RequestMapping({"/list"})
    public String list(@RequestParam(value = "page", required = false) String page, @RequestParam(value = "rows", required = false) String rows, HttpServletResponse res) throws Exception {
        PageBean pageBean = new PageBean(Integer.parseInt(page), Integer.parseInt(rows));
        Map<String, Object> map = new HashMap<>();
        map.put("start", Integer.valueOf(pageBean.getStart()));
        map.put("size", Integer.valueOf(pageBean.getPageSize()));
        List<Link> list = this.linkService.getLink(map);
        JSONObject result = new JSONObject();
        JSONArray jsonArray = JSONArray.fromObject(list);
        Long total = this.linkService.getLinkCount(map);
        result.put("rows", jsonArray);
        result.put("total", total);
        ResponseUtil.writeRes(res, result);
        return null;
    }
    /**
     * 删除友情链接
     */
    @RequestMapping({"/delete"})
    public String delete(@RequestParam("ids") String ids, HttpServletResponse res) throws Exception {
        String[] strIds = ids.split(",");
        for (String id : strIds)
            this.linkService.delete(Integer.valueOf(Integer.parseInt(id)));
        JSONObject result = new JSONObject();
        result.put("success", Boolean.valueOf(true));
        ResponseUtil.writeRes(res, result);
        return null;
    }
    /**
     * 新增友情链接
     * 修改友情链接
     * 根据是否有Id判断新增或修改
     */
    @RequestMapping({"save"})
    public String save(Link link, HttpServletResponse res) throws Exception {
        if (link.getId() == null) {
            this.linkService.add(link);
        } else {
            this.linkService.update(link);
        }
        JSONObject result = new JSONObject();
        result.put("success", Boolean.valueOf(true));
        ResponseUtil.writeRes(res, result);
        return null;
    }
}
