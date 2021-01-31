package yang.chen.blog.controller.admin;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yang.chen.blog.entity.Blogger;
import yang.chen.blog.service.BloggerService;
import yang.chen.blog.util.CommonParam;
import yang.chen.blog.util.DateUtil;
import yang.chen.blog.util.ResponseUtil;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import net.sf.json.JSONObject;

@Controller
@RequestMapping("/admin/blogger")
public class BloggerAdminController {
    @Autowired
    private BloggerService bloggerService;

    @RequestMapping("/save")
    public String save(@RequestParam("imageFile")MultipartFile imageFile,
                       Blogger blogger,
                       HttpServletRequest req,
                       HttpServletResponse res) throws Exception, Exception {
        if(!imageFile.isEmpty()) {
            String filePath = req.getServletContext().getRealPath("/");
            String imageName = DateUtil.currentDateStr()+"."+imageFile.getOriginalFilename().split("\\.")[1];
            imageFile.transferTo(new File(filePath+"static/userImages/"+imageName));
            blogger.setImagename(imageName);
        }
        StringBuffer result = new StringBuffer();
        int resultTotal = bloggerService.updateBlogger(blogger);
        if(resultTotal>0) {
            result.append("<script language='javascript'>alert('修改成功')</script>");
        }else {
            result.append("<script language='javascript'>alert('修改失败');</script>");
        }
        ResponseUtil.writeRes(res, result);
        return null;
    }
    /**
     * 返回JSON格式的博主对象,解决UE Editor的文本显示问题
     */
    @RequestMapping("/find")
    public String find(HttpServletResponse res) throws Exception {
        Blogger blogger = (Blogger)SecurityUtils.getSubject().getSession().getAttribute(CommonParam.Current_User);
        JSONObject result = JSONObject.fromObject(blogger);
        ResponseUtil.writeRes(res, result);
        return null;
    }
    /**
     * 获取不带密码的博主信息
     */
    @RequestMapping("getBloggerMsg")
    public String getBloggerMsg(HttpServletResponse res) throws Exception {
        Blogger blogger = bloggerService.getBloggerByUserName("admin");
        //将密码设置为空，为了安全
        blogger.setPassword(null);
        JSONObject result = JSONObject.fromObject(blogger);
        ResponseUtil.writeRes(res, result);
        return null;
    }
}
