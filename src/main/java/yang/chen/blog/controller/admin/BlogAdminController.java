package yang.chen.blog.controller.admin;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import yang.chen.blog.entity.Blog;
import yang.chen.blog.entity.PageBean;
import yang.chen.blog.lucene.BlogIndex;
import yang.chen.blog.service.BlogService;
import yang.chen.blog.util.DateJsonValueProcessor;
import yang.chen.blog.util.ResponseUtil;
import yang.chen.blog.util.StringFormatUtil;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 博客信息管理
 * @author 盗名-欺世
 *
 */

@Controller
@RequestMapping({"/admin/blog"})
public class BlogAdminController {
    @Resource
    private BlogService service;

    private BlogIndex blogIndex = new BlogIndex();
    /**
     * 保存博客
     */
    @RequestMapping({"/save"})
    public String save(Blog blog, HttpServletResponse res) throws Exception {
        int saveResult = 0;
        if (blog.getId() == null) {
            saveResult = this.service.add(blog).intValue();
            this.blogIndex.addIndex(blog);
        } else {
            saveResult = this.service.update(blog).intValue();
            this.blogIndex.updateIndex(blog);
        }
        JSONObject result = new JSONObject();
        if (saveResult >= 1) {
            result.put("success", Boolean.valueOf(true));
        } else {
            result.put("success", Boolean.valueOf(false));
        }
        ResponseUtil.writeRes(res, result);
        return null;
    }
    /**
     * 分页查询博客列表
     * @throws Exception
     */
    @RequestMapping({"/list"})
    public String list(@RequestParam(value = "page", required = false) String page, @RequestParam(value = "rows", required = false) String rows, Blog blog, HttpServletResponse res) throws Exception {
        PageBean pageBean = new PageBean(Integer.valueOf(page).intValue(), Integer.valueOf(rows).intValue());
        Map<String, Object> map = new HashMap<>();
        map.put("start", Integer.valueOf(pageBean.getStart()));
        map.put("size", Integer.valueOf(pageBean.getPageSize()));
        //根据标题模糊查询
        map.put("title", StringFormatUtil.stringFormat(blog.getTitle()));
        List<Blog> list = this.service.getBlogByParam(map);
        Long total = this.service.getBlogCount(map);
        JSONObject result = new JSONObject();
        //日期转字符串
        JsonConfig config = new JsonConfig();
        config.registerJsonValueProcessor(Date.class, (JsonValueProcessor)new DateJsonValueProcessor("yyyy-MM-dd"));
        //将列表转换为json对象
        JSONArray jsonArray = JSONArray.fromObject(list, config);
        result.put("rows", jsonArray);
        result.put("total", total);
        ResponseUtil.writeRes(res, result);
        return null;
    }
    /**
     * 根据Id查询博客信息
     */
    @RequestMapping({"/findById"})
    public String findById(@RequestParam("id") String id, HttpServletResponse res) throws Exception {
        Blog blog = this.service.getBlogById(Integer.valueOf(Integer.parseInt(id)));
        JSONObject result = JSONObject.fromObject(blog);
        ResponseUtil.writeRes(res, result);
        return null;
    }
    /**
     * 删除博客信息
     */
    @RequestMapping({"/delete"})
    public String deleteBlog(@RequestParam("ids") String ids, HttpServletResponse res) throws Exception {
        String[] strIds = ids.split(",");
        int deleteResult = 0;
        for (int i = 0; i < strIds.length; i++) {
            deleteResult = this.service.delete(Integer.valueOf(Integer.parseInt(strIds[i]))).intValue();
            this.blogIndex.deleteIndex(strIds[i]);
        }
        JSONObject result = new JSONObject();
        if (deleteResult != 0) {
            result.put("success", Boolean.valueOf(true));
        } else {
            result.put("success", Boolean.valueOf(false));
        }
        ResponseUtil.writeRes(res, result);
        return null;
    }
}
