package yang.chen.blog.entity;

import java.io.Serializable;
/**
 * 博客类型实体类
 * @author 盗名-欺世
 *
 */
public class BlogType implements  Serializable{
    private static final long serialVersionUID = 1L;
    /**主键*/
    private Integer id;
    /**博客类型名称*/
    private String typename;
    /**优先级序号*/
    private Integer ordernum;
    /**博客类型数量*/
    private Integer blogcount;

    public Integer getBlogCount() {
        return this.blogcount;
    }

    public void setBlogCount(Integer blogcount) {
        this.blogcount = blogcount;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypeName() {
        return this.typename;
    }

    public void setTypeName(String typename) {
        this.typename = typename;
    }

    public Integer getOrderNum() {
        return this.ordernum;
    }

    public void setOrderNum(Integer ordernum) {
        this.ordernum = ordernum;
    }

    public String toString() {
        return "BlogType [id=" + this.id + ", typename=" + this.typename + ", ordernum=" + this.ordernum + ", blogcount=" + this.blogcount + "]";
    }
}
