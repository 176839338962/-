package yang.chen.blog.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;

import yang.chen.blog.entity.BlogType;
import yang.chen.blog.entity.PageBean;
import yang.chen.blog.service.BlogService;
import yang.chen.blog.service.BlogTypeService;
import yang.chen.blog.util.ResponseUtil;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
/**
 * 博客类型管理
 * @author 盗名-欺世
 *
 */
@Controller
@RequestMapping({"/admin/blogType"})
public class BlogTypeAdminController {
    @Autowired
    private BlogTypeService service;

    @Autowired
    private BlogService blogService;
    /**
     * 博客类型列表
     */
    @RequestMapping({"/list"})
    public String list(@RequestParam(value = "page", required = false) String page, @RequestParam(value = "rows", required = false) String rows, HttpServletResponse res) throws Exception {
        PageBean pageBean = new PageBean(Integer.parseInt(page), Integer.parseInt(rows));
        System.out.println(pageBean);
        Map<String, Object> map = new HashMap<>();
        map.put("start", Integer.valueOf(pageBean.getStart()));
        map.put("size", Integer.valueOf(pageBean.getPageSize()));
        //查询当前页面博客类型
        List<BlogType> blogTypeList = this.service.getBlogTypeByParam(map);
        //查询博客类型总数
        Long total = this.service.getBlogCount(map);
        //返回输出流res
        JSONObject result = new JSONObject();
        JSONArray jsonArray = JSONArray.fromObject(blogTypeList);
        result.put("rows", jsonArray);
        result.put("total", total);
        ResponseUtil.writeRes(res, result);
        return null;
    }
    /**
     * 保存博客类别信息
     * 更新博客类别信息
     */
    @RequestMapping({"/save"})
    public String save(BlogType blogType, HttpServletResponse res) throws Exception {
        int saveResult = 0;
        //根据是否传入id判断执行新增或更新博客类别信息
        if (blogType.getId() == null) {
            saveResult = this.service.add(blogType).intValue();
        } else {
            saveResult = this.service.update(blogType).intValue();
        }
        JSONObject result = new JSONObject();
        //判断是否保存成功,成功返回一个value为true的布尔对象
        if (saveResult >= 1) {
            result.put("success", Boolean.valueOf(true));
        } else {
            result.put("success", Boolean.valueOf(false));
        }
        ResponseUtil.writeRes(res, result);
        return null;
    }
    /**
     * 删除博客类别信息
     */
    @RequestMapping({"/delete"})
    public String delet(String ids, HttpServletResponse res) throws Exception {
        String[] strIds = ids.split(",");
        int deleteResult = 0;
        JSONObject result = new JSONObject();
        //删除博客类别之前先判断是否存在相关博客
        for (String id : strIds) {
            int blogCount = this.blogService.getBlogCountByBlogType(Integer.valueOf(Integer.parseInt(id))).intValue();
            if (blogCount == 0) {
                int deleteResultSingle = this.service.delete(Integer.valueOf(Integer.parseInt(id))).intValue();
                if (deleteResultSingle >= 1)
                    deleteResult++;
            } else {
                result.put("existBlog", Boolean.valueOf(true));
            }
        }
        if (deleteResult >= 1) {
            result.put("success", Boolean.valueOf(true));
        } else {
            result.put("success", Boolean.valueOf(false));
        }
        ResponseUtil.writeRes(res, result);
        return null;
    }
}
