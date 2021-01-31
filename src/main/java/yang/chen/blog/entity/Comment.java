package yang.chen.blog.entity;

import java.util.Date;
/**
 * 博客评论实体类
 * @author 盗名-欺世
 *
 */
public class Comment {
    /**主键*/
    private Integer id;
    /**评论用户Ip*/
    private String userIp;
    /**评论内容*/
    private String content;
    /**评论日期*/
    private Date commentDate;
    /**审核状态*/
    private Integer state;
    /**评论所属博客*/
    private Blog blog;
    /**日期的字符串格式*/
    private String commentDateStr;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserIp() {
        return this.userIp;
    }

    public void setUserIp(String userIp) {
        this.userIp = userIp;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCommentDate() {
        return this.commentDate;
    }

    public void setCommentDate(Date commentDate) {
        this.commentDate = commentDate;
    }

    public Integer getState() {
        return this.state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getCommentDateStr() {
        return this.commentDateStr;
    }

    public void setCommentDateStr(String commentDateStr) {
        this.commentDateStr = commentDateStr;
    }

    public Blog getBlog() {
        return this.blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }

    public String toString() {
        return "Comment [id=" + this.id + ", userIp=" + this.userIp + ", content=" + this.content + ", commentDate=" + this.commentDate + ", state=" + this.state + ", blog=" + this.blog + ", commentDateStr=" + this.commentDateStr + "]";
    }
}
