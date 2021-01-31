package yang.chen.blog.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import yang.chen.blog.entity.Blog;
import yang.chen.blog.entity.PageBean;
import yang.chen.blog.service.BlogService;
import yang.chen.blog.util.PageUtil;
import yang.chen.blog.util.StringFormatUtil;


@Controller
@RequestMapping({"/"})
public class IndexController {
    @Autowired
    private BlogService blogService;

    @RequestMapping({"/index"})
    public ModelAndView index(@RequestParam(value = "page", required = false) String page, @RequestParam(value = "typeid", required = false) String typeid, @RequestParam(value = "releaseDateStr", required = false) String releaseDateStr, HttpServletRequest req) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("title", "个人博客系统");
        if (StringFormatUtil.isEmpty(page).booleanValue())
            page = "1";
        // 取出14篇文章
        PageBean pageBean = new PageBean(Integer.parseInt(page), 14);
        Map<String, Object> map = new HashMap<>();
        map.put("start", Integer.valueOf(pageBean.getStart()));
        map.put("size", Integer.valueOf(pageBean.getPageSize()));
        map.put("typeid", typeid);
        map.put("releaseDateStr", releaseDateStr);
        List<Blog> list = this.blogService.getBlogByParam(map);
        //翻页
        StringBuffer param = new StringBuffer();
        if (StringFormatUtil.isNotEmpty(typeid).booleanValue())
            param.append("typeid=" + typeid + "&");
        if (StringFormatUtil.isNotEmpty(releaseDateStr).booleanValue())
            param.append("releaseDateStr=" + releaseDateStr + "&");
        mav.addObject("mainPage", "foreground/test/list.jsp");
        String pageCode = PageUtil.getPagination(req.getContextPath() + "/index.html", this.blogService.getBlogCount(map).longValue(), 10, param, Integer.parseInt(page));
        mav.addObject("pageCode", pageCode);
        mav.addObject("blogList", list);
        return mav;
    }
}
