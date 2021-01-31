<%--
  Created by IntelliJ IDEA.
  User: duibuqi
  Date: 2021/1/27
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="breadcrumbs"><a title="返回首页" href="${pageContext.request.contextPath}"><i class="fa fa-home"></i></a>
    <small>></small>
    <a href="http://www.eryajf.net/category/%e6%89%93%e5%8c%85%e5%b7%a5%e5%85%b7">打包工具</a> <small>></small>
    <a href="http://www.eryajf.net/category/%e6%89%93%e5%8c%85%e5%b7%a5%e5%85%b7/nexus">nexus</a>
    <small>></small> <span class="muted"><一>企业级开源仓库nexus实战应用&#8211;nexus的安装</span></div>
<style type="text/css">
    .prettyprint, pre.prettyprint {
        background-color: #272822;
        border: none;
        overflow: hidden;
        padding: 10px 15px;
    }

    .prettyprint.linenums, pre.prettyprint.linenums {
        -webkit-box-shadow: inset 40px 0 0 #39382E, inset 41px 0 0 #464741;
        -moz-box-shadow: inset 40px 0 0 #39382E, inset 41px 0 0 #464741;
        box-shadow: inset 40px 0 0 #39382E, inset 41px 0 0 #464741;
    }

    .prettyprint.linenums ol, pre.prettyprint.linenums ol {
        margin: 0 0 0 33px;
    }

    .prettyprint.linenums ol li, pre.prettyprint.linenums ol li {
        padding-left: 12px;
        color: #bebec5;
        line-height: 20px;
        margin-left: 0;
        list-style: decimal;
    }

    .prettyprint .com {
        color: #93a1a1;
    }

    .prettyprint .lit {
        color: #AE81FF;
    }

    .prettyprint .pun, .prettyprint .opn, .prettyprint .clo {
        color: #F8F8F2;
    }

    .prettyprint .fun {
        color: #dc322f;
    }

    .prettyprint .str, .prettyprint .atv {
        color: #E6DB74;
    }

    .prettyprint .kwd, .prettyprint .tag {
        color: #F92659;
    }

    .prettyprint .typ, .prettyprint .atn, .prettyprint .dec, .prettyprint .var {
        color: #A6E22E;
    }

    .prettyprint .pln {
        color: #66D9EF;
    }</style>
<header class="article-header">
    <h1 class="article-title">${blog.title}</h1>
    <div class="meta"><span id="mute-category" class="muted"><i class="fa fa-list-alt"></i><a
            href="http://www.eryajf.net/category/%e6%89%93%e5%8c%85%e5%b7%a5%e5%85%b7/nexus"> nexus</a></span>
        <span class="muted"><i class="fa fa-user"></i> <a
                href="http://www.启龙.net/author/启龙">eryajf</a></span> <span class="muted"><i
                class="fa fa-clock-o"></i> 2年前 (2018-10-16)</span> <span class="muted"><i
                class="fa fa-eye"></i> 6214°C</span> <span class="muted"><i class="fa fa-flag"></i> <a
                target="_blank" title="点击查看" rel="external nofollow"
                href="http://www.baidu.com/s?wd=<一>企业级开源仓库nexus实战应用&#8211;nexus的安装">已收录</a></span> <span
                class="muted"><i class="fa fa-comments-o"></i> <a
                href="http://www.eryajf.net/1803.html#comments">2个评论</a></span> <span class="muted"></span>
    </div>
</header>
<article class="article-content">
    ${blog.content}
    <hr>
    <div class="s-weixin-one" style="margin:10px auto 20px;width:25pc">
        <div class="weimg-one" style="padding:5px;border:1px dashed #ccc"><img
                src="${pageContext.request.contextPath}/static/uploads/2018/12/2018120715213483.png" alt="weinxin"
                style="float:left;margin:0 10px 0 0;width:30%;height:auto">
            <div class="weixin-h" style="float:left;width:65%"><strong>扫码订阅本站，第一时间获得更新</strong></div>
            <div style="float:left;width:65%;color:#999" class="weixin-h-w">
                微信扫描二维码，订阅我们网站的动态，另外不定时发送WordPress小技巧，你可以随时退订，欢迎订阅哦~
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <hr/>
    <div class="open-message">二丫讲梵 , 版权所有丨如未注明 , 均为原创丨本网站采用<a
            href="http://www.eryajf.net/go?url=http://creativecommons.org/licenses/by-nc-sa/3.0/"
            rel="nofollow" target="_blank" title="BY-NC-SA授权协议">BY-NC-SA</a>协议进行授权 , 转载请注明<a
            href="http://www.eryajf.net/1803.html" target="_blank"
            title="<一>企业级开源仓库nexus实战应用&#8211;nexus的安装">
        <一>企业级开源仓库nexus实战应用&#8211;nexus的安装
    </a>！
    </div>
    <div class="article-social"><a href="javascript:;" data-action="ding" data-id="1803" id="Addlike"
                                   class="action"><i class="fa fa-heart-o"></i>喜欢 (<span
            class="count">7</span>)</a><span class="or"><style>.article-social .weixin:hover {
        background: #fff;
    }</style><a class="weixin" style="border-bottom:0px;font-size:15pt;cursor:pointer;">赏<div
            class="weixin-popover"><div class="popover bottom in"><div class="arrow"></div><div
            class="popover-title"><center>[如果想支持本站，可支付宝赞助]</center></div><div class="popover-content"><img
            width="200px" height="200px" src="https://ae01.alicdn.com/kf/HTB17dqke21G3KVjSZFk761K4XXav.png"></div></div></div></a></span><span
            class="action action-share bdsharebuttonbox"><i class="fa fa-share-alt"></i>分享 (<span
            class="bds_count" data-cmd="count" title="累计分享0次">0</span>)<div class="action-popover"><div
            class="popover top in"><div class="arrow"></div><div class="popover-content"><a href="#"
                                                                                            class="sinaweibo fa fa-weibo"
                                                                                            data-cmd="tsina"
                                                                                            title="分享到新浪微博"></a><a
            href="#" class="bds_qzone fa fa-star" data-cmd="qzone" title="分享到QQ空间"></a><a href="#"
                                                                                          class="qq fa fa-qq"
                                                                                          data-cmd="sqq"
                                                                                          title="分享到QQ好友"></a><a
            href="#" class="bds_renren fa fa-renren" data-cmd="renren" title="分享到人人网"></a><a href="#"
                                                                                             class="bds_weixin fa fa-weixin"
                                                                                             data-cmd="weixin"
                                                                                             title="分享到微信"></a><a
            href="#" class="bds_more fa fa-ellipsis-h" data-cmd="more"></a></div></div></div></span></div>
</article>
<footer class="article-footer">
    <div class="article-tags"><i class="fa fa-tags"></i><a href="http://www.eryajf.net/tag/docker"
                                                           rel="tag">docker</a><a
            href="http://www.eryajf.net/tag/maven" rel="tag">maven</a><a
            href="http://www.eryajf.net/tag/nexus" rel="tag">nexus</a></div>
</footer>
<nav class="article-nav"><span class="article-nav-prev"><i class="fa fa-angle-double-left"></i> <a
        href="http://www.eryajf.net/1786.html" rel="prev"><二十四>Jenkins实战应用–Jenkins插件之Ansicolor（神器）</a></span>
    <span class="article-nav-next"><a href="http://www.eryajf.net/1816.html" rel="next"><二>企业级开源仓库nexus3实战应用&#8211;使用nexus3配置docker私有仓库</a> <i
            class="fa fa-angle-double-right"></i></span></nav>
<div class="ab-author clr">
    <div class="img"><img alt='eryajf'
                          src='http://www.eryajf.net/wp-content/uploads/2018/03/c7807fe37966_avatar-110x110.jpg'
                          class='avatar avatar-110 photo' height='110' width='110'/></div>
    <div class="ab-author-info">
        <div class="words">
            <div class="wordsname">关于作者：<a href="http://www.启龙.net/author/启龙" title="由eryajf发布"
                                           rel="author">eryajf</a></div>
            <div class="authorde">学无止境，我愿意无止境学。书山有路，我愿意举身投火，淬炼成金！永远不要忘记，激情的奋进，就是美好的未来！</div>
            <div class="authorsocials"><span class="socials-icon-wrap"><a class="ab-img ab-home"
                                                                          target="_blank"
                                                                          href="http://eryajf.net"
                                                                          title="作者主页"><i
                    class="fa fa-home"></i>作者主页</a></span><span class="socials-icon-wrap"><a id="showdiv"
                                                                                             class="ab-img ab-donate"
                                                                                             target="_blank"
                                                                                             href="#donatecoffee"> <i
                    class="fa fa-coffee"></i>赞助作者 </a></span><span class="socials-icon-wrap"><a
                    class="ab-img ab-email" target="_blank" href="mailto:Linuxlql@163.com" title="给我写信"><i
                    class="fa fa-envelope"></i></a></span><span class="socials-icon-wrap"><a
                    class="ab-img ab-sinawb" target="_blank" href="二丫讲梵" title="微博"><i
                    class="fa fa-weibo"></i></a></span><span class="socials-icon-wrap"><a
                    class="ab-img ab-git" target="_blank" href="https://github.com/eryajf" title="Git"><i
                    class="fa fa-git"></i></a></span><span class="socials-icon-wrap"><a
                    class="ab-img ab-weixin" target="_blank"
                    href="https://tieba.baidu.com/home/main?un=二丫讲梵&ie=utf-8" id="ab-weixin-a" title="百度贴吧"><i
                    class="fa fa-paw"></i></a></span><span class="socials-icon-wrap"><a class="ab-img ab-qq"
                                                                                        target="_blank"
                                                                                        href="tencent://message/?uin=1175463710&Site=&Menu=yes"
                                                                                        title="QQ交谈"><i
                    class="fa fa-qq"></i></a></span></div>
        </div>
    </div>
</div>
<div id="donatecoffee" style="overflow:auto;display:none;"><img width="400" height="400" alt="支持作者一杯咖啡"
                                                                src="https://ae01.alicdn.com/kf/HTB17dqke21G3KVjSZFk761K4XXav.png">
</div>
<div class="related_top">
    <div class="related_posts">
        <ul class="related_img">
            <li class="related_box"><a href="http://www.eryajf.net/5324.html"
                                       title="<十二>企业级开源仓库nexus3实战应用&#8211;通过命令行往Python私仓传包" target="_blank"><img
                    class="thumb" style="width:185px;height:110px"
                    src="http://www.eryajf.net/wp-content/themes/Git-alpha/timthumb.php?src=https://tva4.sinaimg.cn/large/71cfeb93ly1gl2x6jzggtj21hc0u0422.jpg&h=110&w=185&q=90&zc=1&ct=1"
                    alt="<十二>企业级开源仓库nexus3实战应用&#8211;通过命令行往Python私仓传包"/><br><span class="r_title"><十二>企业级开源仓库nexus3实战应用&#8211;通过命令行往Python私仓传包</span></a>
            </li>
            <li class="related_box"><a href="http://www.eryajf.net/5236.html" title="<十四>docker学习笔记-修改默认网段"
                                       target="_blank"><img class="thumb" style="width:185px;height:110px"
                                                            src="http://www.eryajf.net/wp-content/themes/Git-alpha/timthumb.php?src=http://tva1.sinaimg.cn/large/71cfeb93ly1gf8j9b2skpj20no0zk44z.jpg&h=110&w=185&q=90&zc=1&ct=1"
                                                            alt="<十四>docker学习笔记-修改默认网段"/><br><span
                    class="r_title"><十四>docker学习笔记-修改默认网段</span></a></li>
            <li class="related_box"><a href="http://www.eryajf.net/5234.html"
                                       title="<十三>docker学习笔记-修改默认数据存储目录" target="_blank"><img class="thumb"
                                                                                              style="width:185px;height:110px"
                                                                                              src="http://www.eryajf.net/wp-content/themes/Git-alpha/timthumb.php?src=http://tvax3.sinaimg.cn/large/71cfeb93ly1gf8j98nwr1j20no0zkq7u.jpg&h=110&w=185&q=90&zc=1&ct=1"
                                                                                              alt="<十三>docker学习笔记-修改默认数据存储目录"/><br><span
                    class="r_title"><十三>docker学习笔记-修改默认数据存储目录</span></a></li>
            <li class="related_box"><a href="http://www.eryajf.net/5146.html"
                                       title="使用athens部署企业内部Gitlab包的私服代理" target="_blank"><img class="thumb"
                                                                                               style="width:185px;height:110px"
                                                                                               src="http://www.eryajf.net/wp-content/themes/Git-alpha/timthumb.php?src=https://tvax4.sinaimg.cn/large/005BYqpgly1g1utb1kchmj31hc0u0tdp.jpg&h=110&w=185&q=90&zc=1&ct=1"
                                                                                               alt="使用athens部署企业内部Gitlab包的私服代理"/><br><span
                    class="r_title">使用athens部署企业内部Gitlab包的私服代理</span></a></li>
        </ul>
        <div class="relates">
            <ul>
                <li><i class="fa fa-minus"></i><a href="http://www.eryajf.net/4941.html">
                    <十一>企业级开源仓库nexus3实战应用&#8211;go1.12与1.14之私服使用的差异与变化
                </a></li>
                <li><i class="fa fa-minus"></i><a href="http://www.eryajf.net/4054.html">
                    <十>企业级开源仓库nexus3实战应用&#8211;Gradel上传本地包的一些坑及注意点
                </a></li>
                <li><i class="fa fa-minus"></i><a href="http://www.eryajf.net/3623.html">
                    <九>企业级开源仓库nexus3实战应用&#8211;使用nexus3配置golang私有仓库
                </a></li>
                <li><i class="fa fa-minus"></i><a href="http://www.eryajf.net/3617.html">
                    <八>企业级开源仓库nexus3实战应用&#8211;使用nexus3配置Python私有仓库
                </a></li>
                <li><i class="fa fa-minus"></i><a href="http://www.eryajf.net/3388.html">
                    <十二>docker学习笔记–使用apline镜像
                </a></li>
                <li><i class="fa fa-minus"></i><a href="http://www.eryajf.net/3113.html">
                    <十一>docker学习笔记–制作lnmp镜像
                </a></li>
                <li><i class="fa fa-minus"></i><a href="http://www.eryajf.net/2949.html">
                    <十>docker学习笔记–制作kafka镜像
                </a></li>
                <li><i class="fa fa-minus"></i><a href="http://www.eryajf.net/2888.html">
                    <九>docker学习笔记–从docker容器时间问题探究到Namespace问题
                </a></li>
            </ul>
        </div>
    </div>
</div>
<div id="respond" class="no_webshot"><h3 class="queryinfo"> 您必须 <a
        href="http://www.eryajf.net/wp-login.php?redirect_to=http%3A%2F%2Fwww.eryajf.net%2F1803.html">登录</a>
    才能发表评论！ </h3></div>
<div id="postcomments">
    <div id="comments"><i class="fa fa-comments-o"></i> <b> (2)</b>个小伙伴在吐槽</div>
    <ol class="commentlist">
        <li class="comment byuser comment-author-dnnltf even thread-even depth-1" id="comment-316">
            <div class="c-avatar"><img alt='╰⋛⋋や☆盛行☆や⋌⋚╯'
                                       data-original='http://www.eryajf.net/wp-content/uploads/2018/12/51_avatar-54x54.jpg'
                                       class='avatar avatar-54 photo' height='54' width='54'/>
                <div class="c-main" id="div-comment-316">-v --ulimit nofile=65536：65536，这个:中文不报错吗？
                    <div class="c-meta"><span class="c-author"><a target="_blank"
                                                                  href="http://www.eryajf.net/author/dnnltf">dnnltf</a></span><a
                            class="vip1" title="评论达人 LV.1"></a>2018-11-28 17:34 <a rel="nofollow"
                                                                                   class="comment-reply-login"
                                                                                   href="http://www.eryajf.net/wp-login.php?redirect_to=http%3A%2F%2Fwww.eryajf.net%2F1803.html">登录以回复</a><span
                            style="color: #ff6600;"> Windows 7 | Chrome 63.0.3239.132</span></div>
                </div>
            </div>
            <ul class="children">
                <li class="comment byuser comment-author-eryajf bypostauthor odd alt depth-2"
                    id="comment-317">
                    <div class="c-avatar"><img alt='eryajf'
                                               data-original='http://www.eryajf.net/wp-content/uploads/2018/03/c7807fe37966_avatar-54x54.jpg'
                                               class='avatar avatar-54 photo' height='54' width='54'/>
                        <div class="c-main" id="div-comment-317">感谢提醒，可能在写文档的过程中格式变化了，中文：肯定不行的，已经更正
                            <div class="c-meta"><span class="c-author"><a target="_blank"
                                                                          href="http://www.启龙.net/author/启龙">eryajf</a></span><a
                                    title="博主认证" class="vip"></a>2018-11-28 17:59 <a rel="nofollow"
                                                                                     class="comment-reply-login"
                                                                                     href="http://www.eryajf.net/wp-login.php?redirect_to=http%3A%2F%2Fwww.eryajf.net%2F1803.html">登录以回复</a><span
                                    style="color: #ff6600;"> Windows 7 | Chrome 70.0.3538.9</span></div>
                        </div>
                    </div>
                </li>
                <!-- #comment-## -->
            </ul>
            <!-- .children -->
        </li>
        <!-- #comment-## -->
    </ol>
    <div class="commentnav"></div>
</div>

