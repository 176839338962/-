package yang.chen.blog.entity;
/**
 * 博客主人实体类
 * @author 盗名-欺世
 *
 */
public class Blogger {
    /**主键*/
    private Integer id;
    /**用户名*/
    private String username;
    /**密码主键*/
    private String password;
    /**个人信息*/
    private String profile;
    /**昵称*/
    private String nickname;

    private String sign;
    /**头像地址*/
    private String imagename;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getProfile() {
        return this.profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getSign() {
        return this.sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public String getImagename() {
        return this.imagename;
    }

    public void setImagename(String imagename) {
        this.imagename = imagename;
    }

    public String toString() {
        return "Blogger [id=" + this.id + ", username=" + this.username + ", password=" + this.password + ", profil e=" + this.profile + ", nickname=" + this.nickname + ", sign=" + this.sign + ", imagename=" + this.imagename + "]";
    }


}