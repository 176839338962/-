package yang.chen.blog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import yang.chen.blog.entity.Blog;
import yang.chen.blog.entity.Comment;
import yang.chen.blog.service.BlogService;
import yang.chen.blog.service.CommentService;
import yang.chen.blog.util.ResponseUtil;
/**
 * 前端用户提交评论
 * @author 盗名-欺世
 *
 */

@Controller
@RequestMapping({"/comment"})
public class CommentController {
    @Autowired
    private CommentService commentService;

    @Autowired
    private BlogService blogService;

    @RequestMapping({"/save"})
    public String save(Comment comment,
                       @RequestParam("imageCode") String imageCode,
                       HttpServletRequest req,
                       HttpServletResponse res,
                       HttpSession session) throws Exception {
        String sRand = (String)session.getAttribute("sRand");
        JSONObject result = new JSONObject();
        int resultTotal = 0;
        if (!imageCode.equals(sRand)) {
            result.put("success", Boolean.FALSE);
            result.put("errorInfo", "验证码错误");
        } else {
            String userIp = req.getRemoteAddr();
            comment.setUserIp(userIp);
            if (comment.getId() == null) {
                resultTotal = this.commentService.add(comment).intValue();

                //给对应的评论数+1
                Blog blog = this.blogService.getBlogById(comment.getBlog().getId());
                blog.setReplyHit(Integer.valueOf(blog.getReplyHit().intValue() + 1));
                this.blogService.update(blog);
            }
        }
        if (resultTotal > 0) {
            result.put("success", Boolean.TRUE);
        } else {
            result.put("success", Boolean.FALSE);
        }
        ResponseUtil.writeRes(res, result);
        return null;
    }
}
