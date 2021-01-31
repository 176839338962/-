package yang.chen.blog.realm;

import yang.chen.blog.entity.Blogger;
import yang.chen.blog.service.BloggerService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;


public class MyRealm extends AuthorizingRealm {
    @Autowired
    private BloggerService bloggerService;
    /**
     * 该方法用于获取授权信息
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        return null;
    }
    /**
     * 登录验证
     * token:令牌,基于用户名和密码的令牌
     */
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //从令牌中获取用户名
        String username = (String)token.getPrincipal();
        //让Shiro完成验证过程
        Blogger blogger = this.bloggerService.getBloggerByUserName(username);
        if (blogger != null) {
            //将用户信息放入session,所有地方都可以取
            SecurityUtils.getSubject().getSession().setAttribute("currentUser", blogger);
            return (AuthenticationInfo)new SimpleAuthenticationInfo(blogger.getUsername(), blogger.getPassword(), getName());
        }
        return null;
    }
}
