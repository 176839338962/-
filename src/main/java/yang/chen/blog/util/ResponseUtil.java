package yang.chen.blog.util;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletResponse;
/**
 * Response的工具类
 * @author 盗名-欺世
 *
 */
public class ResponseUtil {
    public static void writeRes(HttpServletResponse response, Object obj) throws Exception {
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(obj.toString());
        out.flush();
        out.close();
    }
}
