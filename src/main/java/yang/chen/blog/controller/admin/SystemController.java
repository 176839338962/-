package yang.chen.blog.controller.admin;

import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yang.chen.blog.entity.Blog;
import yang.chen.blog.entity.BlogType;
import yang.chen.blog.entity.Blogger;
import yang.chen.blog.entity.Link;
import yang.chen.blog.service.BlogService;
import yang.chen.blog.service.BlogTypeService;
import yang.chen.blog.service.BloggerService;
import yang.chen.blog.service.LinkService;
import yang.chen.blog.util.CryptographyUtil;
import yang.chen.blog.util.ResponseUtil;
import net.sf.json.JSONObject;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.support.RequestContextUtils;


@Controller
@RequestMapping({"/admin/system"})
public class SystemController {
    @Autowired
    private BlogTypeService blogTypeService;

    @Autowired
    private BloggerService bloggerService;

    @Autowired
    private BlogService blogService;

    @Autowired
    private LinkService linkService;
    /**
     * 刷新系统缓存
     */
    @RequestMapping({"/refreshSystemCache"})
    public String refreshSystemCache(HttpServletRequest req, HttpServletResponse res) throws Exception {
        ServletContext application = RequestContextUtils.findWebApplicationContext(req).getServletContext();
        List<BlogType> list = this.blogTypeService.getBlogTypeWithoutParam();
        List<Blog> blogCountList = this.blogService.getBlogWithoutParam();
        List<Link> linkList = this.linkService.getLink(null);
        application.setAttribute("blogTypeList", list);
        application.setAttribute("blogCountList", blogCountList);
        application.setAttribute("linkList", linkList);
        JSONObject result = new JSONObject();
        result.put("success", Boolean.valueOf(true));
        ResponseUtil.writeRes(res, result);
        return null;
    }
    /**
     * 修改密码
     */
    @RequestMapping({"/modifyPassword"})
    public String modifyPassword(String password, String userName, HttpServletResponse res) throws Exception {
        Blogger blogger = this.bloggerService.getBloggerByUserName(userName);
        String passwordByMD5 = CryptographyUtil.md5(password, "yang");
        blogger.setPassword(passwordByMD5);
        this.bloggerService.updateBlogger(blogger);
        JSONObject result = new JSONObject();
        result.put("success", Boolean.valueOf(true));
        ResponseUtil.writeRes(res, result);
        return null;
    }
    /**
     * 退出登录
     */
    @RequestMapping({"/logout"})
    public String logout() {
        //调用Shiro的logout()可以清除session中的博主对象信息
        SecurityUtils.getSubject().logout();
        return "redirect:/login.jsp";
    }
}
