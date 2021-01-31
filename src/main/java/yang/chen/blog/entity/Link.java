package yang.chen.blog.entity;

import java.io.Serializable;
/**
 * 友情链接实体类
 * @author 盗名-欺世
 *
 */

public class Link implements Serializable{
    private static final long serialVersionUID = 1L;
    /**主键*/
    private Integer id;
    /**链接名称*/
    private String linkname;
    /**链接地址*/
    private String linkurl;
    /**优先级序号*/
    private Integer orderNum;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLinkname() {
        return this.linkname;
    }

    public void setLinkname(String linkname) {
        this.linkname = linkname;
    }

    public String getLinkurl() {
        return this.linkurl;
    }

    public void setLinkurl(String linkurl) {
        this.linkurl = linkurl;
    }

    public Integer getOrderNum() {
        return this.orderNum;
    }

    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }
}
