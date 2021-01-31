package yang.chen.blog.entity;
/**
 * 翻页实体类
 * @author 盗名-欺世
 *
 */
public class PageBean {
    /**当前第几页,从一开始*/
    private int page;
    /**页面大小*/
    private int pageSize;
    /**从第几条数据开始查询显示*/
    private int start;

    public PageBean(int page, int pageSize) {
        this.page = page;
        this.pageSize = pageSize;
    }

    public int getPage() {
        return this.page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getStart() {
        return (this.page - 1) * this.pageSize;
    }
}
