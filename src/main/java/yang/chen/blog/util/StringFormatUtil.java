package yang.chen.blog.util;

import java.util.ArrayList;
import java.util.List;
/**
 * 字符串工具类
 * @author 盗名-欺世
 *
 */
public class StringFormatUtil {
    /**
     * 在字符串两边加上%,用于数据库模糊查询
     */
    public static String stringFormat(String str) {
        if (isNotEmpty(str).booleanValue())
            return "%" + str + "%";
        return null;
    }
    /**
     * 字符串非空判断
     */
    public static Boolean isNotEmpty(String str) {
        if (str != null && !"".equals(str))
            return Boolean.valueOf(true);
        return Boolean.valueOf(false);
    }
    /**
     * 字符串空判断
     */
    public static Boolean isEmpty(String str) {
        if (str == null || "".equals(str))
            return Boolean.valueOf(true);
        return Boolean.valueOf(false);
    }
    /**
     *
     */
    public static List<String> filterSpace(List<String> list) {
        List<String> resultList = new ArrayList<>();
        for (String l : list) {
            if (isNotEmpty(l).booleanValue())
                resultList.add(l);
        }
        return resultList;
    }
}
