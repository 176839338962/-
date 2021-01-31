package yang.chen.blog.util;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.junit.jupiter.api.Test;

/**
 * MD5加密
 * @author 盗名-欺世
 *
 */

public class CryptographyUtil {
    public static String md5(String str, String salt) {
        return (new Md5Hash(str, salt)).toString();
    }


    /**
     * 从这里测试MD5加密获取加密的字符串存入数据库
     * @author 盗名-欺世
     *
     */

    @Test
    public static void main(String[] args) {
        System.out.println(md5("123", "yang"));
    }
}
