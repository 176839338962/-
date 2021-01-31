<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!--代码如诗 , 如痴如醉 !-->
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Cache-Control" content="no-transform" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,IE=10,IE=9,IE=8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <link href="/favicon.ico" rel="icon" type="image/x-icon" />
    <title>盗名-欺世的博客系统</title>
    <meta name="robots" content="index,follow" />
    <link rel='stylesheet' id='Emojify.js-css' href='https://cdn.jsdelivr.net/wp/wp-editormd/tags/10.0.8/assets/Emojify.js/css/basic/emojify.min.css?ver=10.0.8' type='text/css' media='all' />
    <link rel='stylesheet' id='prism-theme-default-css' href='https://cdn.jsdelivr.net/wp/wp-editormd/tags/10.0.8/assets/Prism.js/themes/prism.css?ver=1.15.0' type='text/css' media='all' />
    <link rel='stylesheet' id='prism-plugin-toolbar-css' href='https://cdn.jsdelivr.net/wp/wp-editormd/tags/10.0.8/assets/Prism.js/plugins/toolbar/prism-toolbar.css?ver=1.15.0' type='text/css' media='all' />
    <link rel='stylesheet' id='prism-plugin-line-numbers-css' href='https://cdn.jsdelivr.net/wp/wp-editormd/tags/10.0.8/assets/Prism.js/plugins/line-numbers/prism-line-numbers.css?ver=1.15.0' type='text/css' media='all' />
    <link rel='stylesheet' id='style-css' href='http://www.eryajf.net/wp-content/themes/Git-alpha/style.css?ver=1.0' type='text/css' media='all' />
    <script type='text/javascript' src='http://www.eryajf.net/wp-content/themes/Git-alpha/assets/js/jquery.min.js?ver=1.0'></script>
    <link rel='https://api.w.org/' href='http://www.eryajf.net/wp-json/' />
    <script type="text/javascript">
        $(function($){
            $('#toc span').on('click', function() {
                if($('#toc span').html() == '[显示]') {
                    $('#toc span').html('[隐藏]');
                } else {
                    $('#toc span').html('[显示]');
                }
                $('#toc ul').toggle();
                $('#toc small').toggle();
            });
        });
    </script>
    <style type="text/css">
        #toc {
            float: right;
            max-width: 240px;
            min-width: 120px;
            padding: 6px;
            margin: 0 0 20px 20px;
            border: 1px solid #EDF3DE;
            background: white;
            border-radius: 6px;
        }

        #toc p {
            margin: 0 4px;
        }

        #toc strong {
            border-bottom: 1px solid #EDF3DE;
            display: block;
        }

        #toc span {
            display: block;
            margin: 4px 0;
            cursor: pointer;
        }

        #toc ul {
            margin-bottom: 0;
        }

        #toc li {
            margin: 2px 0;
        }

        #toc small {
            float: right;
        }
    </style>
    <meta name="keywords" content="kvm, 迎刃而解, KVM, 迎刃而解">
    <meta name="description" content="做kvm迁移工作，但是重新启动之后，虚拟机报错如下： CentOS7 无法启动，进入紧急模式，enter emergency mode 根据提示查看日志，发现报错：Failed to mount /sysroot 执行这个命令 $ xfs_repair -v -L /dev/dm-0 然后，就修复了，再reboot，就OK了。">
    <style type="text/css" id="custom-background-css">
        body.custom-background {
            background-image: url("http://www.eryajf.net/wp-content/uploads/2018/03/2018032408240914.jpg");
            background-position: center center;
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
    </style>
    <title>kvm虚拟机开机之后报错Failed to mount |坐而言不如起而行！ 二丫讲梵</title>
    <script>
        window._deel = {
            name: '二丫讲梵',
            url: 'http://www.eryajf.net/wp-content/themes/Git-alpha',
            ajaxpager: '',
            commenton: 0,
            roll: [0, 0]
        }
    </script>
    <!--[if lt IE 9]><script src="https://cdn.bootcss.com/html5shiv/r29/html5.min.js"></script><![endif]-->
    <style type="text/css">
        @media screen and (max-width:800px) {
            .s-weixin-one {
                width: 100% !important
            }
            .weixin-h-w {
                font-size: 10px;
            }
        }
    </style>
</head>

<body class="post-template-default single single-post postid-3007 single-format-standard custom-background">
<header style="background: url('https://ae01.alicdn.com/kf/HTB1rsU7e2WG3KVjSZPcq6zkbXXal.jpg') center 0px repeat-x;background-size: cover;background-repeat:repeat-x\9" id="header" class="header">
    <style type="text/css">
        #nav-header {
            background-color: rgba(85, 84, 85, 0.5);
            background: rgba(85, 84, 85, 0.5);
            color: rgba(85, 84, 85, 0.5);
        }
    </style>
    <style type="text/css">
        .navbar .nav li:hover a,
        .navbar .nav li.current-menu-item a,
        .navbar .nav li.current-menu-parent a,
        .navbar .nav li.current_page_item a,
        .navbar .nav li.current-post-ancestor a,
        .toggle-search,
        #submit,
        .pagination ul>.active>a,
        .pagination ul>.active>span,
        .bdcs-container .bdcs-search-form-submit,
        .metacat a {
            background: #15A892;
        }

        .footer,
        .title h2,
        .card-item .cardpricebtn {
            color: #15A892;
        }

        .bdcs-container .bdcs-search-form-submit,
        .bdcs-container .bdcs-search {
            border-color: #15A892;
        }

        .pagination ul>li>a:hover,
        .navbar .nav li a:focus,
        .navbar .nav li a:hover,
        .toggle-search:hover,
        #submit:hover,
        .cardpricebtn .cardbuy {
            background-color: ;
        }

        .tooltip-inner {
            background-color: ;
        }

        .tooltip.top .tooltip-arrow {
            border-top-color: ;
        }

        .tooltip.right .tooltip-arrow {
            border-right-color: ;
        }

        .tooltip.left .tooltip-arrow {
            border-left-color: ;
        }

        .tooltip.bottom .tooltip-arrow {
            border-bottom-color: ;
        }
    </style>
    <div class="container-inner">
        <div class="g-logo pull-center">
            <a href="/">
                <div class="h1logo"><span class="g-mono" style="font-family:楷体;">二丫讲梵</span> <span class="g-bloger" style="font-family:楷体;">学习，记录，分享。</span></div>
            </a>
        </div>
    </div>
    <div id="toubuads"></div>
    <div id="nav-header" class="navbar" style="border-bottom: 4px solid #15A892 ;">
        <style type="text/css">
            .bdsharebuttonbox a {
                cursor: pointer;
                border-bottom: 0;
                margin-right: 5px;
                width: 28px;
                height: 28px;
                line-height: 28px;
                color: #fff
            }

            .bds_renren {
                background: #94b3eb
            }

            .bds_qzone {
                background: #fac33f
            }

            .bds_more {
                background: #40a57d
            }

            .bds_weixin {
                background: #7ad071
            }

            .bdsharebuttonbox a:hover {
                background-color: #7fb4ab;
                color: #fff;
                border-bottom: 0
            }
        </style>
        <div class="toggle-search pc-hide" style="float:right;position:absolute;top:0;right:0;"><i class="fa fa-search"></i></div>
        <div class="search-expand pc-hide" style="display:none;">
            <div class="search-expand-inner pc-hide">
                <form method="get" class="searchform themeform" onsubmit="location.href='http://www.eryajf.net/search/' + encodeURIComponent(this.s.value).replace(/%20/g, '+'); return false;" action="/">
                    <div><input type="ext" class="search" name="s" onblur="if(this.value=='')this.value='输入内容并回车';" onfocus="if(this.value=='输入内容并回车')this.value='';" value="输入内容并回车"></div>
                </form>
            </div>
        </div>
        <ul class="nav">
            <li id="menu-item-35" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-35">
                <a href="http://www.eryajf.net/">首页</a>
            </li>
            <li id="menu-item-37" class="menu-item menu-item-type-taxonomy menu-item-object-category current-post-ancestor menu-item-has-children menu-item-37">
                <a title="运维技术干货分享" href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb"><i class="fa fa-linux" aria-hidden="true"></i> 术业专攻</a>
                <ul class="sub-menu">
                    <li id="menu-item-38" class="menu-item menu-item-type-taxonomy menu-item-object-category current-post-ancestor menu-item-has-children menu-item-38">
                        <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e4%ba%91%e8%ae%a1%e7%ae%97">云计算</a>
                        <ul class="sub-menu">
                            <li id="menu-item-40" class="menu-item menu-item-type-taxonomy menu-item-object-category current-post-ancestor current-menu-parent current-post-parent menu-item-40">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e4%ba%91%e8%ae%a1%e7%ae%97/kvm">KVM</a>
                            </li>
                            <li id="menu-item-39" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-39">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e4%ba%91%e8%ae%a1%e7%ae%97/docker">docker</a>
                            </li>
                            <li id="menu-item-1305" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1305">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e4%ba%91%e8%ae%a1%e7%ae%97/vmware">VMware</a>
                            </li>
                            <li id="menu-item-2590" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2590">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e4%ba%91%e8%ae%a1%e7%ae%97/rancher">rancher</a>
                            </li>
                            <li id="menu-item-1744" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1744">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e4%ba%91%e8%ae%a1%e7%ae%97/k8s">kubernetes</a>
                            </li>
                        </ul>
                    </li>
                    <li id="menu-item-41" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-41">
                        <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e7%bd%91%e7%ab%99%e6%9c%8d%e5%8a%a1">网站服务</a>
                        <ul class="sub-menu">
                            <li id="menu-item-42" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-42">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e7%bd%91%e7%ab%99%e6%9c%8d%e5%8a%a1/nginx">Nginx</a>
                            </li>
                            <li id="menu-item-43" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-43">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e7%bd%91%e7%ab%99%e6%9c%8d%e5%8a%a1/tomcat">Tomcat</a>
                            </li>
                        </ul>
                    </li>
                    <li id="menu-item-44" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-44">
                        <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e8%87%aa%e5%8a%a8%e5%8c%96%e8%bf%90%e7%bb%b4">自动化运维</a>
                        <ul class="sub-menu">
                            <li id="menu-item-45" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-45">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e8%87%aa%e5%8a%a8%e5%8c%96%e8%bf%90%e7%bb%b4/ansible">ansible</a>
                            </li>
                            <li id="menu-item-3412" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3412">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e8%87%aa%e5%8a%a8%e5%8c%96%e8%bf%90%e7%bb%b4/ldap">LDAP</a>
                            </li>
                            <li id="menu-item-46" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-46">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e8%87%aa%e5%8a%a8%e5%8c%96%e8%bf%90%e7%bb%b4/jenkins">Jenkins</a>
                            </li>
                            <li id="menu-item-237" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-237">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e8%87%aa%e5%8a%a8%e5%8c%96%e8%bf%90%e7%bb%b4/shell%e8%84%9a%e6%9c%ac">Shell脚本</a>
                            </li>
                        </ul>
                    </li>
                    <li id="menu-item-211" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-211">
                        <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e9%98%bf%e9%87%8c%e4%ba%91%e6%96%b9%e9%9d%a2">阿里云方面</a>
                        <ul class="sub-menu">
                            <li id="menu-item-212" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-212">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e9%98%bf%e9%87%8c%e4%ba%91%e6%96%b9%e9%9d%a2/%e4%b8%80%e4%ba%9b%e5%ae%9e%e6%93%8d">一些实操</a>
                            </li>
                            <li id="menu-item-213" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-213">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e9%98%bf%e9%87%8c%e4%ba%91%e6%96%b9%e9%9d%a2/%e4%b8%80%e4%ba%9b%e4%bb%8b%e7%bb%8d">一些介绍</a>
                            </li>
                        </ul>
                    </li>
                    <li id="menu-item-233" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-233">
                        <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/linux%e5%9f%ba%e7%a1%80">Linux基础</a>
                        <ul class="sub-menu">
                            <li id="menu-item-236" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-236">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/linux%e5%9f%ba%e7%a1%80/%e7%a3%81%e7%9b%98%e7%ae%a1%e7%90%86">磁盘管理</a>
                            </li>
                            <li id="menu-item-235" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-235">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/linux%e5%9f%ba%e7%a1%80/%e6%9d%83%e9%99%90%e7%ae%a1%e7%90%86">权限管理</a>
                            </li>
                            <li id="menu-item-234" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-234">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/linux%e5%9f%ba%e7%a1%80/%e5%a5%bd%e7%94%a8%e5%91%bd%e4%bb%a4">好用命令</a>
                            </li>
                        </ul>
                    </li>
                    <li id="menu-item-241" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-241">
                        <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e4%bb%a3%e7%a0%81%e7%ae%a1%e7%90%86">代码管理</a>
                        <ul class="sub-menu">
                            <li id="menu-item-242" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-242">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e4%bb%a3%e7%a0%81%e7%ae%a1%e7%90%86/git">Git</a>
                            </li>
                        </ul>
                    </li>
                    <li id="menu-item-309" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-309">
                        <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e6%9c%8d%e5%8a%a1%e7%b1%bb%e7%9b%b8%e5%85%b3">服务类相关</a>
                        <ul class="sub-menu">
                            <li id="menu-item-914" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-914">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e6%9c%8d%e5%8a%a1%e7%b1%bb%e7%9b%b8%e5%85%b3/conf">配置文件</a>
                            </li>
                        </ul>
                    </li>
                    <li id="menu-item-2962" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-2962">
                        <a href="http://www.eryajf.net/category/%e6%95%b0%e6%8d%ae%e5%ba%93">数据库</a>
                        <ul class="sub-menu">
                            <li id="menu-item-2971" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2971">
                                <a href="http://www.eryajf.net/category/%e6%95%b0%e6%8d%ae%e5%ba%93/redis">Redis</a>
                            </li>
                            <li id="menu-item-2970" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2970">
                                <a href="http://www.eryajf.net/category/%e6%95%b0%e6%8d%ae%e5%ba%93/mysql">MySQL</a>
                            </li>
                            <li id="menu-item-2969" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2969">
                                <a href="http://www.eryajf.net/category/%e6%95%b0%e6%8d%ae%e5%ba%93/mongodb">MongoDB</a>
                            </li>
                        </ul>
                    </li>
                    <li id="menu-item-2961" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-2961">
                        <a href="http://www.eryajf.net/category/%e6%89%93%e5%8c%85%e5%b7%a5%e5%85%b7">打包工具</a>
                        <ul class="sub-menu">
                            <li id="menu-item-1805" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1805">
                                <a href="http://www.eryajf.net/category/%e6%89%93%e5%8c%85%e5%b7%a5%e5%85%b7/nexus">nexus</a>
                            </li>
                        </ul>
                    </li>
                    <li id="menu-item-2963" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-2963">
                        <a href="http://www.eryajf.net/category/%e6%97%a5%e5%bf%97%e7%ae%a1%e7%90%86">日志管理</a>
                        <ul class="sub-menu">
                            <li id="menu-item-2966" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2966">
                                <a href="http://www.eryajf.net/category/%e6%97%a5%e5%bf%97%e7%ae%a1%e7%90%86/elk">ELK</a>
                            </li>
                        </ul>
                    </li>
                    <li id="menu-item-2965" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-2965">
                        <a href="http://www.eryajf.net/category/%e7%9b%91%e6%8e%a7%e5%91%8a%e8%ad%a6">监控告警</a>
                        <ul class="sub-menu">
                            <li id="menu-item-322" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-322">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e6%9c%8d%e5%8a%a1%e7%b1%bb%e7%9b%b8%e5%85%b3/zabbix">zabbix</a>
                            </li>
                            <li id="menu-item-2591" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2591">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e6%9c%8d%e5%8a%a1%e7%b1%bb%e7%9b%b8%e5%85%b3/prometheus">Prometheus</a>
                            </li>
                        </ul>
                    </li>
                    <li id="menu-item-2964" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-2964">
                        <a href="http://www.eryajf.net/category/%e6%b6%88%e6%81%af%e9%98%9f%e5%88%97">消息队列</a>
                        <ul class="sub-menu">
                            <li id="menu-item-2967" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2967">
                                <a href="http://www.eryajf.net/category/%e6%b6%88%e6%81%af%e9%98%9f%e5%88%97/kafka">kafka</a>
                            </li>
                            <li id="menu-item-2968" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2968">
                                <a href="http://www.eryajf.net/category/%e6%b6%88%e6%81%af%e9%98%9f%e5%88%97/rabbitmq-%e6%9c%8d%e5%8a%a1%e7%b1%bb%e7%9b%b8%e5%85%b3">RabbitMQ</a>
                            </li>
                        </ul>
                    </li>
                    <li id="menu-item-5157" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-5157">
                        <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/code">编程世界</a>
                        <ul class="sub-menu">
                            <li id="menu-item-5158" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-5158">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/code/golang">Golang</a>
                            </li>
                            <li id="menu-item-5159" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-5159">
                                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/code/vue">Vue</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li id="menu-item-47" class="menu-item menu-item-type-taxonomy menu-item-object-category current-post-ancestor current-menu-parent current-post-parent menu-item-47">
                <a title="日常问题解决记录" href="http://www.eryajf.net/category/%e8%bf%8e%e5%88%83%e8%80%8c%e8%a7%a3"><i class="fa fa-question-circle-o" aria-hidden="true"></i> 迎刃而解</a>
            </li>
            <li id="menu-item-48" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-48">
                <a title="提高效率必备工具" href="http://www.eryajf.net/category/%e6%95%88%e7%8e%87%e5%b7%a5%e5%85%b7"><i class="fa fa-paper-plane" aria-hidden="true"></i> 效率工具</a>
                <ul class="sub-menu">
                    <li id="menu-item-257" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-257">
                        <a href="http://www.eryajf.net/category/%e5%b7%a6%e9%a1%be%e5%8f%b3%e7%9b%bc/windows">Windows</a>
                    </li>
                    <li id="menu-item-717" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-717">
                        <a href="http://www.eryajf.net/category/%e6%95%88%e7%8e%87%e5%b7%a5%e5%85%b7/%e8%a3%85%e6%9c%ba%e5%bf%85%e5%a4%87">Windows装机必备</a>
                    </li>
                    <li id="menu-item-1485" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1485">
                        <a href="http://www.eryajf.net/category/%e6%95%88%e7%8e%87%e5%b7%a5%e5%85%b7/python">Python</a>
                    </li>
                </ul>
            </li>
            <li id="menu-item-49" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-49">
                <a title="发布个人杂文随笔" href="http://www.eryajf.net/category/%e9%97%b2%e8%a8%80%e7%a2%8e%e8%af%ad"><i class="fa fa-heart" aria-hidden="true"></i> 闲言碎语</a>
                <ul class="sub-menu">
                    <li id="menu-item-2592" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2592">
                        <a href="http://www.eryajf.net/category/%e9%97%b2%e8%a8%80%e7%a2%8e%e8%af%ad/%e6%88%91%e7%9a%84%e7%88%b7%e7%88%b7">我的爷爷</a>
                    </li>
                    <li id="menu-item-2624" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2624">
                        <a href="http://www.eryajf.net/category/%e9%97%b2%e8%a8%80%e7%a2%8e%e8%af%ad/%e6%88%91%e7%9a%84%e7%88%b6%e4%ba%b2">我的父亲</a>
                    </li>
                    <li id="menu-item-3389" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3389">
                        <a href="http://www.eryajf.net/category/%e9%97%b2%e8%a8%80%e7%a2%8e%e8%af%ad/%e6%88%91%e7%9a%84%e5%ad%a9%e5%ad%90">我的孩子</a>
                    </li>
                    <li id="menu-item-2604" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2604">
                        <a href="http://www.eryajf.net/category/%e9%97%b2%e8%a8%80%e7%a2%8e%e8%af%ad/%e7%88%b1%e6%83%85%e6%9d%82%e8%b0%88">爱情杂谈</a>
                    </li>
                    <li id="menu-item-2605" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2605">
                        <a href="http://www.eryajf.net/category/%e9%97%b2%e8%a8%80%e7%a2%8e%e8%af%ad/%e7%94%9f%e6%b4%bb%e6%84%9f%e6%82%9f">生活感悟</a>
                    </li>
                    <li id="menu-item-2603" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2603">
                        <a href="http://www.eryajf.net/category/%e9%97%b2%e8%a8%80%e7%a2%8e%e8%af%ad/%e6%8b%9b%e8%81%98%e9%9d%a2%e8%af%95">招聘面试</a>
                    </li>
                </ul>
            </li>
            <li id="menu-item-50" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-50">
                <a title="个人兴趣爱好品读" href="http://www.eryajf.net/category/%e7%94%b5%e5%bd%b1%e9%9f%b3%e4%b9%90"><i class="fa fa-film" aria-hidden="true"></i> 电影音乐</a>
                <ul class="sub-menu">
                    <li id="menu-item-238" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-238">
                        <a href="http://www.eryajf.net/category/%e7%94%b5%e5%bd%b1%e9%9f%b3%e4%b9%90/%e5%bd%b1%e8%a7%86%e6%96%b9%e9%9d%a2">影视方面</a>
                    </li>
                    <li id="menu-item-239" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-239">
                        <a href="http://www.eryajf.net/category/%e7%94%b5%e5%bd%b1%e9%9f%b3%e4%b9%90/%e9%9f%b3%e4%b9%90%e8%b5%8f%e6%9e%90">音乐赏析</a>
                    </li>
                </ul>
            </li>
            <li id="menu-item-52" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-52">
                <a href="http://www.eryajf.net/category/%e6%84%8f%e7%8a%b9%e6%9c%aa%e5%b0%bd"><i class="fa fa-google-wallet" aria-hidden="true"></i> 意犹未尽</a>
                <ul class="sub-menu">
                    <li id="menu-item-1208" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1208">
                        <a href="http://www.eryajf.net/category/%e6%84%8f%e7%8a%b9%e6%9c%aa%e5%b0%bd/%e4%bd%b3%e6%96%87%e5%86%8d%e7%8e%b0">佳文再现</a>
                    </li>
                    <li id="menu-item-1209" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-1209">
                        <a href="http://www.eryajf.net/category/%e6%84%8f%e7%8a%b9%e6%9c%aa%e5%b0%bd/%e5%90%84%e7%a7%8d%e5%bc%80%e6%ba%90%e9%a1%b9%e7%9b%ae">开源项目</a>
                        <ul class="sub-menu">
                            <li id="menu-item-1210" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1210">
                                <a href="http://www.eryajf.net/category/%e6%84%8f%e7%8a%b9%e6%9c%aa%e5%b0%bd/%e5%90%84%e7%a7%8d%e5%bc%80%e6%ba%90%e9%a1%b9%e7%9b%ae/cmdb-%e5%90%84%e7%a7%8d%e5%bc%80%e6%ba%90%e9%a1%b9%e7%9b%ae">CMDB</a>
                            </li>
                            <li id="menu-item-1211" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1211">
                                <a href="http://www.eryajf.net/category/%e6%84%8f%e7%8a%b9%e6%9c%aa%e5%b0%bd/%e5%90%84%e7%a7%8d%e5%bc%80%e6%ba%90%e9%a1%b9%e7%9b%ae/devops">DEVOPS</a>
                            </li>
                            <li id="menu-item-1212" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1212">
                                <a href="http://www.eryajf.net/category/%e6%84%8f%e7%8a%b9%e6%9c%aa%e5%b0%bd/%e5%90%84%e7%a7%8d%e5%bc%80%e6%ba%90%e9%a1%b9%e7%9b%ae/%e8%87%aa%e5%8a%a8%e5%8c%96%e8%bf%90%e7%bb%b4-%e5%90%84%e7%a7%8d%e5%bc%80%e6%ba%90%e9%a1%b9%e7%9b%ae">自动化运维</a>
                            </li>
                            <li id="menu-item-1233" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1233">
                                <a href="http://www.eryajf.net/category/%e6%84%8f%e7%8a%b9%e6%9c%aa%e5%b0%bd/%e5%90%84%e7%a7%8d%e5%bc%80%e6%ba%90%e9%a1%b9%e7%9b%ae/%e6%96%87%e6%a1%a3wiki">文档wiki</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li id="menu-item-51" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-51">
                <a title="系列文章汇总页面" href="http://www.eryajf.net/category/%e7%b3%bb%e5%88%97%e6%96%87%e7%ab%a0"><i class="fa fa-list-ol" aria-hidden="true"></i> 系列</a>
                <ul class="sub-menu">
                    <li id="menu-item-1424" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1424">
                        <a href="http://www.eryajf.net/%e6%96%87%e7%ab%a0%e5%ad%98%e6%a1%a3%e6%b1%87%e6%80%bb/kvm%e7%b3%bb%e5%88%97%e6%96%87%e7%ab%a0">Kvm系列文章</a>
                    </li>
                    <li id="menu-item-2661" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2661">
                        <a href="http://www.eryajf.net/%e6%96%87%e7%ab%a0%e5%ad%98%e6%a1%a3%e6%b1%87%e6%80%bb/elk%e7%b3%bb%e5%88%97%e6%96%87%e7%ab%a0">ELK系列文章</a>
                    </li>
                    <li id="menu-item-1423" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1423">
                        <a href="http://www.eryajf.net/%e6%96%87%e7%ab%a0%e5%ad%98%e6%a1%a3%e6%b1%87%e6%80%bb/gitlab%e7%b3%bb%e5%88%97%e6%96%87%e7%ab%a0">Gitlab系列文章</a>
                    </li>
                    <li id="menu-item-2662" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2662">
                        <a href="http://www.eryajf.net/%e6%96%87%e7%ab%a0%e5%ad%98%e6%a1%a3%e6%b1%87%e6%80%bb/nexus%e7%b3%bb%e5%88%97%e6%96%87%e7%ab%a0">Nexus系列文章</a>
                    </li>
                    <li id="menu-item-1422" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1422">
                        <a href="http://www.eryajf.net/%e6%96%87%e7%ab%a0%e5%ad%98%e6%a1%a3%e6%b1%87%e6%80%bb/zabbix%e7%b3%bb%e5%88%97%e6%96%87%e7%ab%a0">Zabbix系列文章</a>
                    </li>
                    <li id="menu-item-2660" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2660">
                        <a href="http://www.eryajf.net/%e6%96%87%e7%ab%a0%e5%ad%98%e6%a1%a3%e6%b1%87%e6%80%bb/jenkins%e7%b3%bb%e5%88%97%e6%96%87%e7%ab%a0">Jenkins系列文章</a>
                    </li>
                    <li id="menu-item-1421" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1421">
                        <a href="http://www.eryajf.net/%e6%96%87%e7%ab%a0%e5%ad%98%e6%a1%a3%e6%b1%87%e6%80%bb/vmware%e7%b3%bb%e5%88%97%e6%96%87%e7%ab%a0">VMware系列文章</a>
                    </li>
                    <li id="menu-item-2663" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2663">
                        <a href="http://www.eryajf.net/%e6%96%87%e7%ab%a0%e5%ad%98%e6%a1%a3%e6%b1%87%e6%80%bb/kubernetes%e7%b3%bb%e5%88%97%e6%96%87%e7%ab%a0">Kubernetes系列文章</a>
                    </li>
                </ul>
            </li>
            <li id="menu-item-108" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-108">
                <a title="本站所有页面合集" href="http://www.eryajf.net/%e6%96%87%e7%ab%a0%e5%ad%98%e6%a1%a3%e6%b1%87%e6%80%bb">页面</a>
                <ul class="sub-menu">
                    <li id="menu-item-325" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-325">
                        <a href="https://zhimap.com/mmap/ec3f5826cc8748d888bac7f996184da9">文章存档</a>
                    </li>
                    <li id="menu-item-2350" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2350">
                        <a href="http://www.eryajf.net/%e4%b8%93%e9%a2%98%e4%b8%ad%e5%bf%83">专题中心</a>
                    </li>
                    <li id="menu-item-485" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-485">
                        <a href="http://www.eryajf.net/%e6%96%87%e7%ab%a0%e5%ad%98%e6%a1%a3%e6%b1%87%e6%80%bb/%e6%97%a5%e5%b8%b8%e8%af%b4%e8%af%b4">日常说说</a>
                    </li>
                    <li id="menu-item-2241" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2241">
                        <a href="http://www.eryajf.net/map/index.html">过往足迹</a>
                    </li>
                    <li id="menu-item-2803" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2803">
                        <a href="http://www.eryajf.net/love/">爱的纪念</a>
                    </li>
                    <li id="menu-item-2625" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2625">
                        <a href="http://c.eryajf.net">个人网盘</a>
                    </li>
                    <li id="menu-item-227" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-227">
                        <a href="http://www.eryajf.net/%e6%96%87%e7%ab%a0%e5%ad%98%e6%a1%a3%e6%b1%87%e6%80%bb/%e5%8f%8b%e6%83%85%e9%93%be%e6%8e%a5">友情链接</a>
                    </li>
                    <li id="menu-item-2403" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2403">
                        <a href="http://www.eryajf.net/%e6%96%87%e7%ab%a0%e5%ad%98%e6%a1%a3%e6%b1%87%e6%80%bb/%e8%af%bb%e8%80%85%e7%95%99%e8%a8%80%e6%9d%bf-2">读者留言板</a>
                    </li>
                    <li id="menu-item-543" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-543">
                        <a href="http://www.eryajf.net/%e6%96%87%e7%ab%a0%e5%ad%98%e6%a1%a3%e6%b1%87%e6%80%bb/%e8%b5%9e%e5%8a%a9%e6%9c%ac%e7%ab%99%e8%80%85">赞助与公示</a>
                    </li>
                </ul>
            </li>
            <li id="menu-item-2805" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2805">
                <a href="http://nav.eryajf.net">导航</a>
            </li>
            <li id="menu-item-2347" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2347">
                <a title="本站介绍" href="http://www.eryajf.net/%e5%85%b3%e4%ba%8e-2">关于</a>
            </li>
            <li style="float:right;">
                <div class="toggle-search m-hide"><i class="fa fa-search"></i></div>
                <div class="search-expand" style="display: none;">
                    <div class="search-expand-inner">
                        <form method="get" class="searchform themeform" onsubmit="location.href='http://www.eryajf.net/search/' + encodeURIComponent(this.s.value).replace(/%20/g, '+'); return false;" action="/">
                            <div><input type="ext" class="search" name="s" onblur="if(this.value=='')this.value='输入内容并回车';" onfocus="if(this.value=='输入内容并回车')this.value='';" value="输入内容并回车"></div>
                        </form>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</header>
<section class="container">
    <div class="speedbar">
        <div class="login-sign pull-right"> <i class="fa fa-sign-in"></i>
            <a id="showdiv" href="#loginbox" data-original-title="点击登录">登录</a>&nbsp;&nbsp;<i class="fa fa-pencil-square-o"></i>
            <a href="http://www.eryajf.net/wp-login.php?action=register">注册</a>
            <div id="loginbox" style="width:350px;height:280px;overflow:auto;display:none;">
                <form name="loginform" id="loginform" action="http://www.eryajf.net/wp-login.php" method="post">
                    <p class="login-username"> <label for="user_login">用户名或电子邮件地址</label> <input type="text" name="log" id="user_login" class="input" value="" size="20" /> </p>
                    <p class="login-password"> <label for="user_pass">密码</label> <input type="password" name="pwd" id="user_pass" class="input" value="" size="20" /> </p>
                    <p class="login-remember"><label><input name="rememberme" type="checkbox" id="rememberme" value="forever" /> 记住我的登录信息</label></p>
                    <p class="login-submit"> <input type="submit" name="wp-submit" id="wp-submit" class="button button-primary" value="登录" /> <input type="hidden" name="redirect_to" value="http://www.eryajf.net/3007.html" /> </p>
                </form>
            </div>
        </div>
        <div class="toptip" id="callboard">
            <ul style="font-size:16px;margin-top:2px;">
                <li>对于注定会优秀的人来说，他所需要的，只是时间!</li>
                <li>手懒得，必受贫穷，手勤的，必得富足----《圣经》</li>
                <li>帮助别人，成就自己。愿君在本站能真正有所收获！</li>
                <li>如果你在本站中发现任何问题，欢迎留言指正！</li>
                <li>宝剑锋从磨砺出，梅花香自苦寒来！</li>
            </ul>
        </div>
    </div>
    <div class="content-wrap">
        <div class="content">
            <div class="breadcrumbs">
                <a title="返回首页" href="http://www.eryajf.net"><i class="fa fa-home"></i></a> <small>></small>
                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb">术业专攻</a> <small>></small>
                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e4%ba%91%e8%ae%a1%e7%ae%97">云计算</a> <small>></small>
                <a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e4%ba%91%e8%ae%a1%e7%ae%97/kvm">KVM</a> <small>></small> <span class="muted">kvm虚拟机开机之后报错Failed to mount</span></div>
            <style type="text/css">
                .prettyprint,
                pre.prettyprint {
                    background-color: #272822;
                    border: none;
                    overflow: hidden;
                    padding: 10px 15px;
                }

                .prettyprint.linenums,
                pre.prettyprint.linenums {
                    -webkit-box-shadow: inset 40px 0 0 #39382E, inset 41px 0 0 #464741;
                    -moz-box-shadow: inset 40px 0 0 #39382E, inset 41px 0 0 #464741;
                    box-shadow: inset 40px 0 0 #39382E, inset 41px 0 0 #464741;
                }

                .prettyprint.linenums ol,
                pre.prettyprint.linenums ol {
                    margin: 0 0 0 33px;
                }

                .prettyprint.linenums ol li,
                pre.prettyprint.linenums ol li {
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

                .prettyprint .pun,
                .prettyprint .opn,
                .prettyprint .clo {
                    color: #F8F8F2;
                }

                .prettyprint .fun {
                    color: #dc322f;
                }

                .prettyprint .str,
                .prettyprint .atv {
                    color: #E6DB74;
                }

                .prettyprint .kwd,
                .prettyprint .tag {
                    color: #F92659;
                }

                .prettyprint .typ,
                .prettyprint .atn,
                .prettyprint .dec,
                .prettyprint .var {
                    color: #A6E22E;
                }

                .prettyprint .pln {
                    color: #66D9EF;
                }
            </style>
            <header class="article-header">
                <h1 class="article-title"><a href="http://www.eryajf.net/3007.html">kvm虚拟机开机之后报错Failed to mount</a></h1>
                <div class="meta"> <span id="mute-category" class="muted"><i class="fa fa-list-alt"></i><a href="http://www.eryajf.net/category/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb/%e4%ba%91%e8%ae%a1%e7%ae%97/kvm"> KVM</a></span> <span class="muted"><i class="fa fa-user"></i> <a href="http://www.启龙.net/author/启龙">eryajf</a></span> <span class="muted"><i class="fa fa-clock-o"></i> 2年前 (2019-07-14)</span> <span class="muted"><i class="fa fa-eye"></i> 2411°C</span> <span class="muted"><i class="fa fa-flag"></i> <a target="_blank" title="点击查看" rel="external nofollow" href="http://www.baidu.com/s?wd=kvm虚拟机开机之后报错Failed to mount">已收录</a></span> <span class="muted"><i class="fa fa-comments-o"></i> <a href="http://www.eryajf.net/3007.html#respond">0个评论</a></span> <span class="muted"></span> </div>
            </header>
            <article class="article-content">
                <div class="read-time" style="color:#F86B06">
                    <center>本文预计阅读时间 <span>1</span> 分钟</center>
                </div>
                <p>做kvm迁移工作，但是重新启动之后，虚拟机报错如下：</p>
                <p><img src="http://tvax3.sinaimg.cn/large/71cfeb93ly1gmaw71sc1bj20ve0l7dsx.jpg" alt="" /></p>
                <p>CentOS7 无法启动，进入紧急模式，<code>enter emergency mode</code></p>
                <p>根据提示查看日志，发现报错：<code>Failed to mount /sysroot</code></p>
                <p>执行这个命令</p>
                <pre class="prettyprint linenums"><code class="line-numbers">$ xfs_repair -v -L /dev/dm-0
</code></pre>
                <p>然后，就修复了，再<code>reboot</code>，就OK了。</p>
                <hr>
                <div class="s-weixin-one" style="margin:10px auto 20px;width:25pc">
                    <div class="weimg-one" style="padding:5px;border:1px dashed #ccc"> <img src="http://www.eryajf.net/wp-content/uploads/2018/12/2018120715213483.png" alt="weinxin" style="float:left;margin:0 10px 0 0;width:30%;height:auto">
                        <div class="weixin-h" style="float:left;width:65%"><strong>扫码订阅本站，第一时间获得更新</strong></div>
                        <div style="float:left;width:65%;color:#999" class="weixin-h-w">微信扫描二维码，订阅我们网站的动态，另外不定时发送WordPress小技巧，你可以随时退订，欢迎订阅哦~</div>
                        <div class="clear"></div>
                    </div>
                </div>
                <hr />
                <div class="open-message">二丫讲梵 , 版权所有丨如未注明 , 均为原创丨本网站采用
                    <a href="http://www.eryajf.net/go?url=http://creativecommons.org/licenses/by-nc-sa/3.0/" rel="nofollow" target="_blank" title="BY-NC-SA授权协议">BY-NC-SA</a>协议进行授权 , 转载请注明
                    <a href="http://www.eryajf.net/3007.html" target="_blank" title="kvm虚拟机开机之后报错Failed to mount">kvm虚拟机开机之后报错Failed to mount</a>！</div>
                <div class="article-social">
                    <a href="javascript:;" data-action="ding" data-id="3007" id="Addlike" class="action"><i class="fa fa-heart-o"></i>喜欢 (<span class="count">4</span>)</a><span class="or"><style>.article-social .weixin:hover{background:#fff;}</style><a class="weixin" style="border-bottom:0px;font-size:15pt;cursor:pointer;">赏<div class="weixin-popover"><div class="popover bottom in"><div class="arrow"></div><div class="popover-title"><center>[如果想支持本站，可支付宝赞助]</center></div><div class="popover-content"><img width="200px" height="200px" src="https://ae01.alicdn.com/kf/HTB17dqke21G3KVjSZFk761K4XXav.png" ></div></div></div></a></span><span class="action action-share bdsharebuttonbox"><i class="fa fa-share-alt"></i>分享 (<span class="bds_count" data-cmd="count" title="累计分享0次">0</span>)
							<div class="action-popover">
								<div class="popover top in">
									<div class="arrow"></div>
									<div class="popover-content">
										<a href="#" class="sinaweibo fa fa-weibo" data-cmd="tsina" title="分享到新浪微博"></a>
										<a href="#" class="bds_qzone fa fa-star" data-cmd="qzone" title="分享到QQ空间"></a>
										<a href="#" class="qq fa fa-qq" data-cmd="sqq" title="分享到QQ好友"></a>
										<a href="#" class="bds_renren fa fa-renren" data-cmd="renren" title="分享到人人网"></a>
										<a href="#" class="bds_weixin fa fa-weixin" data-cmd="weixin" title="分享到微信"></a>
										<a href="#" class="bds_more fa fa-ellipsis-h" data-cmd="more"></a>
									</div>
								</div>
							</div>
							</span>
                </div>
            </article>
            <footer class="article-footer">
                <div class="article-tags"><i class="fa fa-tags"></i>
                    <a href="http://www.eryajf.net/tag/kvm" rel="tag">kvm</a>
                    <a href="http://www.eryajf.net/tag/%e8%bf%8e%e5%88%83%e8%80%8c%e8%a7%a3" rel="tag">迎刃而解</a>
                </div>
            </footer>
            <nav class="article-nav"> <span class="article-nav-prev"><i class="fa fa-angle-double-left"></i> <a href="http://www.eryajf.net/3002.html" rel="prev">git更改前一次commit内容并提交到master</a></span> <span class="article-nav-next"><a href="http://www.eryajf.net/3018.html" rel="next">随感随想<一>记一次陪女友逛街&#8211;2014年12月</a> <i class="fa fa-angle-double-right"></i></span> </nav>
            <div class="ab-author clr">
                <div class="img"><img alt='eryajf' src='http://www.eryajf.net/wp-content/uploads/2018/03/c7807fe37966_avatar-110x110.jpg' class='avatar avatar-110 photo' height='110' width='110' /></div>
                <div class="ab-author-info">
                    <div class="words">
                        <div class="wordsname">关于作者：
                            <a href="http://www.启龙.net/author/启龙" title="由eryajf发布" rel="author">eryajf</a>
                        </div>
                        <div class="authorde">学无止境，我愿意无止境学。书山有路，我愿意举身投火，淬炼成金！永远不要忘记，激情的奋进，就是美好的未来！</div>
                        <div class="authorsocials"><span class="socials-icon-wrap"><a class="ab-img ab-home" target="_blank" href="http://eryajf.net" title="作者主页"><i class="fa fa-home"></i>作者主页</a></span><span class="socials-icon-wrap"><a id="showdiv" class="ab-img ab-donate" target="_blank" href="#donatecoffee"> <i class="fa fa-coffee"></i>赞助作者 </a></span><span class="socials-icon-wrap"><a class="ab-img ab-email" target="_blank" href="mailto:Linuxlql@163.com" title="给我写信"><i class="fa fa-envelope"></i></a></span><span class="socials-icon-wrap"><a class="ab-img ab-sinawb" target="_blank" href="二丫讲梵" title="微博"><i class="fa fa-weibo"></i></a></span><span class="socials-icon-wrap"><a class="ab-img ab-git" target="_blank" href="https://github.com/eryajf" title="Git"><i class="fa fa-git"></i></a></span><span class="socials-icon-wrap"><a class="ab-img ab-weixin" target="_blank" href="https://tieba.baidu.com/home/main?un=二丫讲梵&ie=utf-8" id="ab-weixin-a" title="百度贴吧"><i class="fa fa-paw"></i></a></span><span class="socials-icon-wrap"><a class="ab-img ab-qq" target="_blank" href="tencent://message/?uin=1175463710&Site=&Menu=yes" title="QQ交谈"><i class="fa fa-qq"></i></a></span> </div>
                    </div>
                </div>
            </div>
            <div id="donatecoffee" style="overflow:auto;display:none;"><img width="400" height="400" alt="支持作者一杯咖啡" src="https://ae01.alicdn.com/kf/HTB17dqke21G3KVjSZFk761K4XXav.png"></div>
            <div class="related_top">
                <div class="related_posts">
                    <ul class="related_img">
                        <li class="related_box">
                            <a href="http://www.eryajf.net/5322.html" title="<八>Gitlab实战应用&#8211;使用curl批量在分组内创建项目" target="_blank"><img class="thumb" style="width:185px;height:110px" src="http://www.eryajf.net/wp-content/themes/Git-alpha/timthumb.php?src=https://tvax1.sinaimg.cn/large/71cfeb93ly1gl2x6kaffqj21c00u0gp5.jpg&h=110&w=185&q=90&zc=1&ct=1" alt="<八>Gitlab实战应用&#8211;使用curl批量在分组内创建项目" /><br><span class="r_title"><八>Gitlab实战应用&#8211;使用curl批量在分组内创建项目</span></a>
                        </li>
                        <li class="related_box">
                            <a href="http://www.eryajf.net/5317.html" title="<七>Gitlab实战应用—通过命令行git log获取各种提交信息" target="_blank"><img class="thumb" style="width:185px;height:110px" src="http://www.eryajf.net/wp-content/themes/Git-alpha/timthumb.php?src=https://tva1.sinaimg.cn/large/71cfeb93ly1gl2x77n6omj21c00u00vr.jpg&h=110&w=185&q=90&zc=1&ct=1" alt="<七>Gitlab实战应用—通过命令行git log获取各种提交信息" /><br><span class="r_title"><七>Gitlab实战应用—通过命令行git log获取各种提交信息</span></a>
                        </li>
                        <li class="related_box">
                            <a href="http://www.eryajf.net/5315.html" title="<六>Gitlab实战应用&#8211;忘记root密码怎么办？" target="_blank"><img class="thumb" style="width:185px;height:110px" src="http://www.eryajf.net/wp-content/themes/Git-alpha/timthumb.php?src=https://tvax4.sinaimg.cn/large/71cfeb93ly1gl2x7h09s7j21hc0u0wj3.jpg&h=110&w=185&q=90&zc=1&ct=1" alt="<六>Gitlab实战应用&#8211;忘记root密码怎么办？" /><br><span class="r_title"><六>Gitlab实战应用&#8211;忘记root密码怎么办？</span></a>
                        </li>
                        <li class="related_box">
                            <a href="http://www.eryajf.net/5016.html" title="<十七>ELK-学习笔记&#8211;filebeat报错too many open files处理" target="_blank"><img class="thumb" style="width:185px;height:110px" src="http://www.eryajf.net/wp-content/themes/Git-alpha/timthumb.php?src=https://tvax3.sinaimg.cn/large/71cfeb93ly1gf8j8vuxyzj20oe0zkgp9.jpg&h=110&w=185&q=90&zc=1&ct=1" alt="<十七>ELK-学习笔记&#8211;filebeat报错too many open files处理" /><br><span class="r_title"><十七>ELK-学习笔记&#8211;filebeat报错too many open files处理</span></a>
                        </li>
                    </ul>
                    <div class="relates">
                        <ul>
                            <li><i class="fa fa-minus"></i>
                                <a href="http://www.eryajf.net/5008.html">利用prlimit动态修改应用进程的最大文件打开数</a>
                            </li>
                            <li><i class="fa fa-minus"></i>
                                <a href="http://www.eryajf.net/4052.html">ETCD在使用中遇到过的报错及处理</a>
                            </li>
                            <li><i class="fa fa-minus"></i>
                                <a href="http://www.eryajf.net/3002.html">git更改前一次commit内容并提交到master</a>
                            </li>
                            <li><i class="fa fa-minus"></i>
                                <a href="http://www.eryajf.net/2782.html">给php-7.1.5添加扩展fileinfo</a>
                            </li>
                            <li><i class="fa fa-minus"></i>
                                <a href="http://www.eryajf.net/2268.html">关于sed命令当中包含变量的坑</a>
                            </li>
                            <li><i class="fa fa-minus"></i>
                                <a href="http://www.eryajf.net/2266.html">分析解决脚本执行时总是报出command not found</a>
                            </li>
                            <li><i class="fa fa-minus"></i>
                                <a href="http://www.eryajf.net/2104.html">Linux的普通用户bash突然报错bash: fork: retry: No child processes的解决办法</a>
                            </li>
                            <li><i class="fa fa-minus"></i>
                                <a href="http://www.eryajf.net/1672.html">解决git clone报错Peer&#8217;s Certificate has expired的问题</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="respond" class="no_webshot">
                <h3 class="queryinfo"> 您必须 <a href="http://www.eryajf.net/wp-login.php?redirect_to=http%3A%2F%2Fwww.eryajf.net%2F3007.html">登录</a> 才能发表评论！ </h3> </div>
        </div>
    </div>
    <aside class="sidebar">
        <div class="widget git_social">
            <div class="widget widget_text">
                <div class="textwidget">
                    <div class="social">
                        <a href="https://weibo.com/p/1005051909451667/home?from=page_100505&mod=TAB#place" rel="external nofollow" title="新浪微博" target="_blank"><i class="sinaweibo fa fa-weibo"></i></a>
                        <a href="https://github.com/eryajf" rel="external nofollow" title="GitHub" target="_blank"><i class="customicon fa fa-github"></i></a>
                        <a class="weixin"><i class="weixins fa fa-weixin"></i>
                            <div class="weixin-popover">
                                <div class="popover bottom in">
                                    <div class="arrow"></div>
                                    <div class="popover-title">订阅号“如果想支持本站，可微信赞助”</div>
                                    <div class="popover-content"><img width="200px" height="200px" src="https://ae01.alicdn.com/kf/HTB1t8eje9SD3KVjSZFK76210VXaE.png"></div>
                                </div>
                            </div>
                        </a>
                        <a class="weixin"><i class="pay fa fa-alipay"></i>
                            <div class="weixin-popover">
                                <div class="popover bottom in">
                                    <div class="arrow"></div>
                                    <div class="popover-title">支付宝“如果想支持本站，可支付宝赞助”</div>
                                    <div class="popover-content"><img src="https://ae01.alicdn.com/kf/HTB17dqke21G3KVjSZFk761K4XXav.png"></div>
                                </div>
                            </div>
                        </a>
                        <a href="tencent://message/?uin=1175463710&Site=&Menu=yes " rel="external nofollow" title="联系QQ" target="_blank"><i class="qq fa fa-qq"></i></a>
                        <a href="http://www.eryajf.net/feed/" rel="external nofollow" target="_blank" title="订阅本站"><i class="rss fa fa-rss"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="widget widget_media_audio">
            <div class="title">
                <h2>郑智化-我这样的男人</h2></div>
            <!--[if lt IE 9]><script>document.createElement('audio');</script><![endif]-->
            <audio class="wp-audio-shortcode" id="audio-3007-1" preload="none" style="width: 100%;" controls="controls">
                <source type="audio/mpeg" src="http://www.eryajf.net/wp-content/uploads/2018/03/2018032314135466.mp3?_=1" />
                <source type="audio/mpeg" src="http://www.eryajf.net/wp-content/uploads/2018/03/2018032314135466.mp3?_=1" />
                <a href="http://www.eryajf.net/wp-content/uploads/2018/03/2018032314135466.mp3">http://www.eryajf.net/wp-content/uploads/2018/03/2018032314135466.mp3</a>
            </audio>
        </div>
        <div class="widget widget_media_image">
            <div class="title">
                <h2>微信扫码，订阅本站！</h2></div>
            <a href="https://eryajf.net"><img width="430" height="430" src="http://www.eryajf.net/wp-content/uploads/2018/12/2018120715213483.png" class="image wp-image-2145 attachment-full size-full" alt="" style="max-width: 100%; height: auto;" /></a>
        </div>
        <div class="widget widget_text">
            <div class="title">
                <h2>地球访问</h2></div>
            <div class="textwidget">
                <p>
                    <script type="text/javascript" src="//ra.revolvermaps.com/0/0/6.js?i=04kc3rr6zqv&amp;m=0&amp;c=ff0000&amp;cr1=ffffff&amp;f=times_new_roman&amp;l=0&amp;lx=300&amp;ly=180&amp;he=4" async="async"></script>
                </p>
            </div>
        </div>
        <div class="widget git_postlist">
            <div class="title">
                <h2><a class="btn" target="_blank" href="https://zhimap.com/mmap/ec3f5826cc8748d888bac7f996184da9">所有文章</a>不期而遇</h2></div>
            <ul>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/4934.html" title="confluence数据目录满了"><span class="thumbnail"><img width="100px" height="64px" src="http://www.eryajf.net/wp-content/themes/Git-alpha/timthumb.php?src=https://tva3.sinaimg.cn/large/71cfeb93ly1gf5kj76ntdj21hc0xcaf0.jpg&h=64&w=100&q=90&zc=1&ct=1" alt="confluence数据目录满了" /></span><span class="text">confluence数据目录满了</span><span class="muted">2020-05-28</span><span class="muted">0</span></a>
                </li>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/5283.html" title="<三>Linux好用命令之free命令"><span class="thumbnail"><img width="100px" height="64px" src="http://www.eryajf.net/wp-content/themes/Git-alpha/timthumb.php?src=http://tvax2.sinaimg.cn/large/71cfeb93ly1gjp26q57hcj21hc0u0gr6.jpg&h=64&w=100&q=90&zc=1&ct=1" alt="<三>Linux好用命令之free命令" /></span><span class="text"><三>Linux好用命令之free命令</span><span class="muted">2020-10-24</span><span class="muted">0</span></a>
                </li>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/5232.html" title="PHP新增sodium模块"><span class="thumbnail"><img width="100px" height="64px" src="http://www.eryajf.net/wp-content/themes/Git-alpha/timthumb.php?src=http://tva2.sinaimg.cn/large/71cfeb93ly1gf8jb767t5j20rs14fajk.jpg&h=64&w=100&q=90&zc=1&ct=1" alt="PHP新增sodium模块" /></span><span class="text">PHP新增sodium模块</span><span class="muted">2020-10-09</span><span class="muted">0</span></a>
                </li>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/2205.html" title="<二十八>Kubernetes学习笔记-手动搭建k8s-1.10.4之部署work节点"><span class="thumbnail"><img width="100px" height="64px" src="http://www.eryajf.net/wp-content/themes/Git-alpha/timthumb.php?src=/wp-content/uploads/2018/12/2018120906330355.jpg&h=64&w=100&q=90&zc=1&ct=1" alt="<二十八>Kubernetes学习笔记-手动搭建k8s-1.10.4之部署work节点" /></span><span class="text"><二十八>Kubernetes学习笔记-手动搭建k8s-1.10.4之部署work节点</span><span class="muted">2018-12-09</span><span class="muted">0</span></a>
                </li>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/2245.html" title="利用shell脚本将博客数据库备份到邮箱附件"><span class="thumbnail"><img width="100px" height="64px" src="http://www.eryajf.net/wp-content/themes/Git-alpha/timthumb.php?src=/wp-content/uploads/2018/12/2018121114121344.jpg&h=64&w=100&q=90&zc=1&ct=1" alt="利用shell脚本将博客数据库备份到邮箱附件" /></span><span class="text">利用shell脚本将博客数据库备份到邮箱附件</span><span class="muted">2018-12-11</span><span class="muted">0</span></a>
                </li>
            </ul>
        </div>
        <div class="widget widget_links">
            <div class="title">
                <h2>牧童遥指（友链）</h2></div>
            <ul class='xoxo blogroll'>
                <li>
                    <a href="https://www.abcdocker.com/">abcdocker</a>
                </li>
                <li>
                    <a href="https://u.tools/">utools</a>
                </li>
                <li>
                    <a href="http://www.showerlee.com/">一路向北</a>
                </li>
                <li>
                    <a href="https://lai.yuweining.cn" title="https://lai.yuweining.cn/ning/logo.jpg">不死鸟-分享为王</a>
                </li>
                <li>
                    <a href="https://www.wufuba.com">五福吧</a>
                </li>
                <li>
                    <a href="http://www.dywhjt.com">儒释道多元文化讲堂</a>
                </li>
                <li>
                    <a href="https://blog.linux-code.com/">北慕城南博客</a>
                </li>
                <li>
                    <a href="https://www.foreverblog.cn/">十年之约</a>
                </li>
                <li>
                    <a href="http://www.eryajf.net" rel="me" title="学习，记录，分享。" target="_blank">吾悟屋&#8211;运维艺术</a>
                </li>
                <li>
                    <a href="http://www.itmuch.com/">周立的博客</a>
                </li>
                <li>
                    <a href="https://www.ssgeek.com/">山山仙人</a>
                </li>
                <li>
                    <a href="https://www.503error.com/">张志明博客</a>
                </li>
                <li>
                    <a href="https://zhangguanzhang.github.io/">张馆长</a>
                </li>
                <li>
                    <a href="https://masuit.com">懒得勤快</a>
                </li>
                <li>
                    <a href="https://收复.台湾">收复台湾</a>
                </li>
                <li>
                    <a href="http://www.cnblogs.com/kevingrace" rel="friend" title="当你发现自己的才华撑不起野心时，就请安静下来学习吧" target="_blank">散尽浮华</a>
                </li>
                <li>
                    <a href="https://www.zhukun.net/">月与灯依旧</a>
                </li>
                <li>
                    <a href="http://www.weiqingeng.com">朋友-韦勤耕</a>
                </li>
                <li>
                    <a href="http://www.zsythink.net" title="纯正的运维技术博客" target="_blank">朱双印个人日志</a>
                </li>
                <li>
                    <a href="https://dusays.com/">杜老师说</a>
                </li>
                <li>
                    <a href="https://blog.52itstyle.vip/">柒&#039;s blog</a>
                </li>
                <li>
                    <a href="https://www.menglei.info/" target="_blank">清晨博客</a>
                </li>
                <li>
                    <a href="http://www.xiongge.club/" title="关注和分享互联网编程技术，分享生活。" target="_blank">熊哥club</a>
                </li>
                <li>
                    <a href="https://www.iyunw.cn">爱运维</a>
                </li>
            </ul>
        </div>
        <div class="widget git_tag">
            <div class="title">
                <h2>标签云</h2></div>
            <div class="git_tags">
                <a title="46个话题" target="_blank" href="http://www.eryajf.net/tag/jenkins">Jenkins (46)</a>
                <a title="39个话题" target="_blank" href="http://www.eryajf.net/tag/k8s">k8s (39)</a>
                <a title="25个话题" target="_blank" href="http://www.eryajf.net/tag/%e7%b3%bb%e7%bb%9f%e4%bc%98%e5%8c%96">系统优化 (25)</a>
                <a title="22个话题" target="_blank" href="http://www.eryajf.net/tag/elk">elk (22)</a>
                <a title="21个话题" target="_blank" href="http://www.eryajf.net/tag/k8s%e9%9b%86%e7%be%a4">k8s集群 (21)</a>
                <a title="20个话题" target="_blank" href="http://www.eryajf.net/tag/nginx">nginx (20)</a>
                <a title="20个话题" target="_blank" href="http://www.eryajf.net/tag/kubernetes">kubernetes (20)</a>
                <a title="19个话题" target="_blank" href="http://www.eryajf.net/tag/%e8%bf%8e%e5%88%83%e8%80%8c%e8%a7%a3">迎刃而解 (19)</a>
                <a title="18个话题" target="_blank" href="http://www.eryajf.net/tag/docker">docker (18)</a>
                <a title="14个话题" target="_blank" href="http://www.eryajf.net/tag/nexus">nexus (14)</a>
                <a title="11个话题" target="_blank" href="http://www.eryajf.net/tag/%e6%95%88%e7%8e%87%e5%b7%a5%e5%85%b7">效率工具 (11)</a>
                <a title="11个话题" target="_blank" href="http://www.eryajf.net/tag/%e6%88%91%e7%9a%84%e7%88%b7%e7%88%b7">我的爷爷 (11)</a>
                <a title="10个话题" target="_blank" href="http://www.eryajf.net/tag/git">Git (10)</a>
                <a title="10个话题" target="_blank" href="http://www.eryajf.net/tag/elasticsearch">elasticsearch (10)</a>
                <a title="9个话题" target="_blank" href="http://www.eryajf.net/tag/rancher">rancher (9)</a>
                <a title="8个话题" target="_blank" href="http://www.eryajf.net/tag/prometheus">prometheus (8)</a>
                <a title="8个话题" target="_blank" href="http://www.eryajf.net/tag/pipeline">pipeline (8)</a>
                <a title="7个话题" target="_blank" href="http://www.eryajf.net/tag/%e5%9d%91%e5%95%8a%e5%9d%91">坑啊坑 (7)</a>
                <a title="7个话题" target="_blank" href="http://www.eryajf.net/tag/php">PHP (7)</a>
                <a title="7个话题" target="_blank" href="http://www.eryajf.net/tag/%e6%b6%88%e6%81%af%e9%98%9f%e5%88%97">消息队列 (7)</a>
                <a title="6个话题" target="_blank" href="http://www.eryajf.net/tag/tomcat">tomcat (6)</a>
                <a title="6个话题" target="_blank" href="http://www.eryajf.net/tag/%e6%9c%af%e4%b8%9a%e4%b8%93%e6%94%bb">术业专攻 (6)</a>
                <a title="6个话题" target="_blank" href="http://www.eryajf.net/tag/%e4%ba%91%e8%ae%a1%e7%ae%97">云计算 (6)</a>
                <a title="6个话题" target="_blank" href="http://www.eryajf.net/tag/shell%e8%84%9a%e6%9c%ac">shell脚本 (6)</a>
                <a title="6个话题" target="_blank" href="http://www.eryajf.net/tag/maven">maven (6)</a>
                <a title="6个话题" target="_blank" href="http://www.eryajf.net/tag/golang">golang (6)</a>
                <a title="6个话题" target="_blank" href="http://www.eryajf.net/tag/openldap">openLDAP (6)</a>
                <a title="5个话题" target="_blank" href="http://www.eryajf.net/tag/kvm">kvm (5)</a>
                <a title="5个话题" target="_blank" href="http://www.eryajf.net/tag/%e6%8f%92%e4%bb%b6">插件 (5)</a>
                <a title="5个话题" target="_blank" href="http://www.eryajf.net/tag/zabbix">zabbix (5)</a>
                <a title="5个话题" target="_blank" href="http://www.eryajf.net/tag/java">java (5)</a>
                <a title="5个话题" target="_blank" href="http://www.eryajf.net/tag/%e5%bd%b1%e8%a7%86%e5%88%86%e4%ba%ab">影视分享 (5)</a>
                <a title="5个话题" target="_blank" href="http://www.eryajf.net/tag/kafka">kafka (5)</a>
                <a title="5个话题" target="_blank" href="http://www.eryajf.net/tag/%e6%b5%81%e6%b0%b4%e7%ba%bf">流水线 (5)</a>
                <a title="4个话题" target="_blank" href="http://www.eryajf.net/tag/%e9%85%8d%e7%bd%ae%e6%96%87%e4%bb%b6">配置文件 (4)</a>
                <a title="4个话题" target="_blank" href="http://www.eryajf.net/tag/wiki">wiki (4)</a>
                <a title="4个话题" target="_blank" href="http://www.eryajf.net/tag/%e7%a3%81%e7%9b%98">磁盘 (4)</a>
                <a title="4个话题" target="_blank" href="http://www.eryajf.net/tag/vmware">VMware (4)</a>
                <a title="4个话题" target="_blank" href="http://www.eryajf.net/tag/python">Python (4)</a>
                <a title="4个话题" target="_blank" href="http://www.eryajf.net/tag/mysql">MySQL (4)</a>
                <a title="4个话题" target="_blank" href="http://www.eryajf.net/tag/dockerfile">Dockerfile (4)</a>
                <a title="4个话题" target="_blank" href="http://www.eryajf.net/tag/filebeat">filebeat (4)</a>
                <a title="4个话题" target="_blank" href="http://www.eryajf.net/tag/rabbitmq">RabbitMQ (4)</a>
                <a title="4个话题" target="_blank" href="http://www.eryajf.net/tag/mongodb">MongoDB (4)</a>
                <a title="4个话题" target="_blank" href="http://www.eryajf.net/tag/%e6%95%b0%e6%8d%ae%e5%ba%93">数据库 (4)</a>
                <a title="4个话题" target="_blank" href="http://www.eryajf.net/tag/ansible">ansible (4)</a>
                <a title="4个话题" target="_blank" href="http://www.eryajf.net/tag/%e5%a5%bd%e7%94%a8%e5%91%bd%e4%bb%a4">好用命令 (4)</a>
                <a title="4个话题" target="_blank" href="http://www.eryajf.net/tag/linux%e5%91%bd%e4%bb%a4">Linux命令 (4)</a>
                <a title="3个话题" target="_blank" href="http://www.eryajf.net/tag/cmdb">CMDB (3)</a>
                <a title="3个话题" target="_blank" href="http://www.eryajf.net/tag/wordpress">wordpress (3)</a>
                <a title="3个话题" target="_blank" href="http://www.eryajf.net/tag/node">node (3)</a>
                <a title="3个话题" target="_blank" href="http://www.eryajf.net/tag/%e5%bc%80%e6%ba%90%e9%a1%b9%e7%9b%ae">开源项目 (3)</a>
                <a title="3个话题" target="_blank" href="http://www.eryajf.net/tag/%e9%95%9c%e5%83%8f">镜像 (3)</a>
                <a title="3个话题" target="_blank" href="http://www.eryajf.net/tag/kibana">kibana (3)</a>
                <a title="3个话题" target="_blank" href="http://www.eryajf.net/tag/%e4%b8%ad%e9%97%b4%e4%bb%b6">中间件 (3)</a>
                <a title="3个话题" target="_blank" href="http://www.eryajf.net/tag/logstash">logstash (3)</a>
                <a title="3个话题" target="_blank" href="http://www.eryajf.net/tag/%e5%9b%9e%e6%bb%9a">回滚 (3)</a>
                <a title="3个话题" target="_blank" href="http://www.eryajf.net/tag/gitlab">Gitlab (3)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/%e4%bb%a3%e7%a0%81">代码 (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/%e9%92%89%e9%92%89">钉钉 (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/android">Android (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/%e8%87%aa%e5%8a%a8%e5%8c%96%e8%bf%90%e7%bb%b4">自动化运维 (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/sftp">sftp (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/iptables">iptables (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/yum">yum (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/%e6%8b%9b%e8%81%98%e9%9d%a2%e8%af%95">招聘面试 (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/%e5%b9%b4%e7%bb%88%e6%80%bb%e7%bb%93">年终总结 (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/%e8%bf%9b%e7%a8%8b%e7%ae%a1%e7%90%86">进程管理 (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/systemd">systemd (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/lnmp">lnmp (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/mac">Mac (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/%e7%9b%91%e6%8e%a7%e5%91%8a%e8%ad%a6">监控告警 (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/openvpn">openVPN (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/etcd">ETCD (2)</a>
                <a title="2个话题" target="_blank" href="http://www.eryajf.net/tag/tcp">TCP (2)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/%e9%98%bf%e9%87%8c%e4%ba%91">阿里云 (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/windows">Windows (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/%e9%a1%b9%e7%9b%ae%e7%ae%a1%e7%90%86">项目管理 (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/redis">redis (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/pinpoint">pinpoint (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/supervisor">supervisor (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/sonar">sonar (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/rsyslog">rsyslog (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/%e5%be%ae%e6%9c%8d%e5%8a%a1">微服务 (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/%e6%88%91%e7%9a%84%e7%88%b6%e4%ba%b2">我的父亲 (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/%e8%af%bb%e4%b9%a6%e7%9b%b8%e5%85%b3">读书相关 (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/%e5%b7%a5%e4%bd%9c%e6%84%9f%e6%82%9f">工作感悟 (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/%e5%ae%9d%e8%b4%9d%e5%ae%9d%e8%b4%9d">宝贝宝贝 (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/%e9%9a%8f%e6%84%9f%e9%9a%8f%e6%83%b3">随感随想 (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/%e5%9b%be%e5%ba%8a%e5%bb%ba%e8%ae%be">图床建设 (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/vscode">vscode (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/centos7">CentOS7 (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/%e5%b0%8f%e6%8a%80%e5%b7%a7">小技巧 (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/%e9%97%b2%e8%a8%80%e7%a2%8e%e8%af%ad">闲言碎语 (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/cpu">CPU (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/gradle">gradle (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/%e5%ae%89%e5%8d%93">安卓 (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/%e6%8a%93%e5%8c%85">抓包 (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/neovim">neovim (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/openresty">OpenResty (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/gorm">gorm (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/vue">Vue (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/element-ui">element-ui (1)</a>
                <a title="1个话题" target="_blank" href="http://www.eryajf.net/tag/%e5%ae%9e%e6%88%98%e7%bb%8f%e9%aa%8c">实战经验 (1)</a>
            </div>
        </div>
        <div class="widget git_comment">
            <div class="title">
                <h2><a class="btn" target="_blank" href="http://www.eryajf.net/%E6%96%87%E7%AB%A0%E5%AD%98%E6%A1%A3%E6%B1%87%E6%80%BB/%E8%AF%BB%E8%80%85%E7%95%99%E8%A8%80%E6%9D%BF">点此去留言板</a>最新评论</h2></div>
            <ul>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/1040.html#comment-2013" title="个人（wiki）知识管理工具-一代神器之mybase上的评论"><img data-original=https://cdn.jsdelivr.net/gh/yunluo/GitCafeApi/avatar/1690.jpg class='avatar rand_avatar photo' />
                        <div class="muted"><i>mmin2003</i>1天前说：感谢楼主分享</div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/3410.html#comment-2012" title="<一>openLDAP学习笔记--服务端快速部署上的评论"><img data-original=https://cdn.jsdelivr.net/gh/yunluo/GitCafeApi/avatar/104.jpg class='avatar rand_avatar photo' />
                        <div class="muted"><i>zheng-fred</i>1天前说：ldap_bind: Invalid credentials (49) 第一</div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/1040.html#comment-2003" title="个人（wiki）知识管理工具-一代神器之mybase上的评论"><img data-original=https://cdn.jsdelivr.net/gh/yunluo/GitCafeApi/avatar/567.jpg class='avatar rand_avatar photo' />
                        <div class="muted"><i>victor</i>5天前说：可惜了，现在只有一个7.x的链接是正常的，其他两个都失效了，楼主还更新嘛</div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/1040.html#comment-2002" title="个人（wiki）知识管理工具-一代神器之mybase上的评论"><img data-original=https://cdn.jsdelivr.net/gh/yunluo/GitCafeApi/avatar/1131.jpg class='avatar rand_avatar photo' />
                        <div class="muted"><i>victor</i>5天前说：支持楼主，刚发现了一个这么好用的东西</div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/2231.html#comment-2001" title="<三十七>Kubernetes学习笔记-手动搭建k8s-1.10.4之一键部署脚本上的评论"><img data-original=https://cdn.jsdelivr.net/gh/yunluo/GitCafeApi/avatar/1061.jpg class='avatar rand_avatar photo' />
                        <div class="muted"><i>songtao</i>1周前 (01-18)说：查看提取码</div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/1040.html#comment-2000" title="个人（wiki）知识管理工具-一代神器之mybase上的评论"><img data-original=https://cdn.jsdelivr.net/gh/yunluo/GitCafeApi/avatar/1155.jpg class='avatar rand_avatar photo' />
                        <div class="muted"><i>joy_rise</i>1周前 (01-16)说：谢谢博主分享</div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/1040.html#comment-1999" title="个人（wiki）知识管理工具-一代神器之mybase上的评论"><img data-original=https://cdn.jsdelivr.net/gh/yunluo/GitCafeApi/avatar/1704.jpg class='avatar rand_avatar photo' />
                        <div class="muted"><i>adunis</i>1周前 (01-16)说：测试下看可以用不呢。</div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/1552.html#comment-1998" title="pinpoint安装流程上的评论"><img data-original=https://cdn.jsdelivr.net/gh/yunluo/GitCafeApi/avatar/923.jpg class='avatar rand_avatar photo' />
                        <div class="muted"><i>ekkoCc</i>2周前 (01-11)说：写的很好</div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/1731.html#comment-1997" title="分享经典电视剧《武林外传》和《龙门镖局》上的评论"><img data-original=https://cdn.jsdelivr.net/gh/yunluo/GitCafeApi/avatar/888.jpg class='avatar rand_avatar photo' />
                        <div class="muted"><i>jcsl12</i>2周前 (01-10)说：没事翻翻博客，还有意外惊喜</div>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="http://www.eryajf.net/3807.html#comment-1996" title="<一>CentOS-7部署openVPN-2.4.8---基于传统方式进行用户认证上的评论"><img data-original=https://cdn.jsdelivr.net/gh/yunluo/GitCafeApi/avatar/1903.jpg class='avatar rand_avatar photo' />
                        <div class="muted"><i>irez</i>2周前 (01-10)说：感谢，教程很好</div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="widget git_tongji">
            <div class="title">
                <h2>网站统计</h2></div>
            <div class="tongji">
                <ul>
                    <li>文章总数：339 篇</li>
                    <li>评论数目：1903 条</li>
                    <li>建站日期：2017-08-13</li>
                    <li>运行天数：1262 天</li>
                    <li>标签总数：107 个</li>
                    <li>用户总数：1908 个</li>
                    <li>最后更新：2021-1-24</li>
                </ul>
            </div>
        </div>
        <div class="widget widget_archive">
            <div class="title">
                <h2>文章归档</h2></div>
            <ul>
                <li>
                    <a href='http://www.eryajf.net/date/2021/01'>2021年一月</a>&nbsp;(1)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2020/12'>2020年十二月</a>&nbsp;(5)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2020/10'>2020年十月</a>&nbsp;(12)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2020/08'>2020年八月</a>&nbsp;(2)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2020/07'>2020年七月</a>&nbsp;(7)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2020/06'>2020年六月</a>&nbsp;(6)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2020/05'>2020年五月</a>&nbsp;(5)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2020/04'>2020年四月</a>&nbsp;(2)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2020/03'>2020年三月</a>&nbsp;(9)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2020/02'>2020年二月</a>&nbsp;(3)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2020/01'>2020年一月</a>&nbsp;(3)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2019/12'>2019年十二月</a>&nbsp;(10)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2019/11'>2019年十一月</a>&nbsp;(4)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2019/10'>2019年十月</a>&nbsp;(6)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2019/09'>2019年九月</a>&nbsp;(5)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2019/08'>2019年八月</a>&nbsp;(12)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2019/07'>2019年七月</a>&nbsp;(16)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2019/06'>2019年六月</a>&nbsp;(8)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2019/05'>2019年五月</a>&nbsp;(6)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2019/04'>2019年四月</a>&nbsp;(7)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2019/03'>2019年三月</a>&nbsp;(8)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2019/02'>2019年二月</a>&nbsp;(15)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2019/01'>2019年一月</a>&nbsp;(9)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2018/12'>2018年十二月</a>&nbsp;(39)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2018/11'>2018年十一月</a>&nbsp;(7)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2018/10'>2018年十月</a>&nbsp;(20)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2018/09'>2018年九月</a>&nbsp;(9)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2018/08'>2018年八月</a>&nbsp;(15)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2018/07'>2018年七月</a>&nbsp;(14)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2018/06'>2018年六月</a>&nbsp;(28)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2018/05'>2018年五月</a>&nbsp;(22)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2018/04'>2018年四月</a>&nbsp;(11)</li>
                <li>
                    <a href='http://www.eryajf.net/date/2018/03'>2018年三月</a>&nbsp;(13)</li>
            </ul>
        </div>
        <div class="widget widget_calendar">
            <div class="title">
                <h2>文章日历</h2></div>
            <div id="calendar_wrap" class="calendar_wrap">
                <table id="wp-calendar">
                    <caption>2021年一月</caption>
                    <thead>
                    <tr>
                        <th scope="col" title="星期一">一</th>
                        <th scope="col" title="星期二">二</th>
                        <th scope="col" title="星期三">三</th>
                        <th scope="col" title="星期四">四</th>
                        <th scope="col" title="星期五">五</th>
                        <th scope="col" title="星期六">六</th>
                        <th scope="col" title="星期日">日</th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <td colspan="3" id="prev">
                            <a href="http://www.eryajf.net/date/2020/12">&laquo; 12月</a>
                        </td>
                        <td class="pad">&nbsp;</td>
                        <td colspan="3" id="next" class="pad">&nbsp;</td>
                    </tr>
                    </tfoot>
                    <tbody>
                    <tr>
                        <td colspan="4" class="pad">&nbsp;</td>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>5</td>
                        <td>6</td>
                        <td>7</td>
                        <td>8</td>
                        <td>9</td>
                        <td>10</td>
                    </tr>
                    <tr>
                        <td>11</td>
                        <td>12</td>
                        <td>13</td>
                        <td>14</td>
                        <td>15</td>
                        <td>16</td>
                        <td>17</td>
                    </tr>
                    <tr>
                        <td>18</td>
                        <td>19</td>
                        <td>20</td>
                        <td>21</td>
                        <td>22</td>
                        <td>23</td>
                        <td>
                            <a href="http://www.eryajf.net/date/2021/01/24" aria-label="于2021年1月24日上发布的文章">24</a>
                        </td>
                    </tr>
                    <tr>
                        <td>25</td>
                        <td id="today">26</td>
                        <td>27</td>
                        <td>28</td>
                        <td>29</td>
                        <td>30</td>
                        <td>31</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </aside>
</section>
<div id="footbar" style="border-top: 2px solid #8E44AD;">
    <ul>
        <li>
            <p class="first">自演自表</p><span>一生很短，<br>却又漫漫，<br>每个阶段<br>都应该有每个阶段的热爱。<br>爱，<br>就大胆争取，<br>爱，<br>就矢志不渝。<br>为爱出发，不失本心！</span></li>
        <li>
            <p class="second">牧童遥指</p><span><ul><li><a href="http://www.eryajf.net/time-article/index.html" title="博客文章时间轴" target="_blank">博客文章时间轴</a></li><li><a href="http://www.eryajf.net/map/index.html" title="我的足迹地图" target="_blank">我的足迹地图</a></li><li><a href="http://www.eryajf.net/time-blog/index.html" title="博客大事记" target="_blank">博客大事记</a></li></ul></span></li>
        <li>
            <p class="third">接引即用</p><span> <span>⋅ <a href="https://www.foreverblog.cn/" target="_blank" > <img src="https://img.foreverblog.cn/logo_en_default.png" alt="" style="width:auto;height:16px;"> </a></span></li>
        <li>
            <p class="fourth">勿谓言之不预</p><span>本站的文章和资源来自互联网或者站长<br>的原创，按照 CC BY -NC -SA 3.0 CN<br>协议发布和共享，转载或引用本站文章<br>应遵循相同协议。如果有侵犯版权的资<br>源请尽快联系站长，我们会在24h内删<br>除有争议的资源。<br><br>既此勿忘：<br> 学习，记录，分享。</span></li>
    </ul>
</div>
<footer style="border-top: 1px solid ;background-image: url('data:image/jpeg;base64,/9j/4AAQSkZJRgABAgAAZABkAAD/7AARRHVja3kAAQAEAAAAUAAA/+4ADkFkb2JlAGTAAAAAAf/bAIQAAgICAgICAgICAgMCAgIDBAMCAgMEBQQEBAQEBQYFBQUFBQUGBgcHCAcHBgkJCgoJCQwMDAwMDAwMDAwMDAwMDAEDAwMFBAUJBgYJDQsJCw0PDg4ODg8PDAwMDAwPDwwMDAwMDA8MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM/8AAEQgAAgAKAwERAAIRAQMRAf/EAEwAAQEAAAAAAAAAAAAAAAAAAAAJAQEAAAAAAAAAAAAAAAAAAAAAEAEBAAAAAAAAAAAAAAAAAAAAlREBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8Ah7DAhg//2Q=='); background-repeat: repeat;" class="footer">
    <div class="footer-inner">
        <div class="footer-copyright">Copyright © 2017-2020 by eryajf |
            <a href="/" title="二丫讲梵">二丫讲梵</a> |
            <a rel="nofollow " target="_blank" href="http://www.eryajf.net/关于">关于网站</a> |
            <a rel="nofollow " target="_blank" href="http://www.eryajf.net/站点地图">网站地图</a> |
            <a rel="nofollow" target="_blank" href="http://www.eryajf.net/标签汇总">标签汇总</a> |
            <a rel="nofollow" target="_blank" href=" http://www.eryajf.net/文章存档">文章归档</a> |
            <a rel="nofollow " target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=18057030">浙ICP备18057030号</a> |
            <a rel="nofollow" target="_blank" href="http://www.eryajf.net/%E6%96%87%E7%AB%A0%E5%AD%98%E6%A1%A3%E6%B1%87%E6%80%BB/%E5%8F%8B%E6%83%85%E9%93%BE%E6%8E%A5">友情链接</a> | <span class="yunluocopyright">Theme by <a id="yunluo" href="https://gitcafe.net" title="乐趣公园" target="_blank" style="cursor:help;">云落</a></span>
            <!-- 若要删除版权请加乐趣公园(gitcafe.net)为全站友链，或者赞助乐趣公园(支付宝：sp91@qq.com 20元)，谢谢支持 -->
            <span class="trackcode pull-right">
						<script>
							var _hmt = _hmt || [];
                            (function() {
                                var hm = document.createElement("script");
                                hm.src = "https://hm.baidu.com/hm.js?984182dcb935c081606ce3c2dc547455";
                                var s = document.getElementsByTagName("script")[0];
                                s.parentNode.insertBefore(hm, s);
                            })();
						</script>
					</span>
        </div>
    </div>
</footer>
<link rel='stylesheet' id='mediaelement-css' href='http://www.eryajf.net/wp-includes/js/mediaelement/mediaelementplayer-legacy.min.css?ver=4.2.6-78496d1' type='text/css' media='all' />
<link rel='stylesheet' id='wp-mediaelement-css' href='http://www.eryajf.net/wp-includes/js/mediaelement/wp-mediaelement.min.css?ver=5.0.11' type='text/css' media='all' />
<script type='text/javascript' src='https://cdn.jsdelivr.net/wp/wp-editormd/tags/10.0.8/assets/Emojify.js/js/emojify.min.js?ver=10.0.8'></script>
<script type='text/javascript' src='https://cdn.jsdelivr.net/wp/wp-editormd/tags/10.0.8/assets/ClipBoard/clipboard.min.js?ver=2.0.1'></script>
<script type='text/javascript' src='https://cdn.jsdelivr.net/wp/wp-editormd/tags/10.0.8/assets/Prism.js/components/prism-core.min.js?ver=1.15.0'></script>
<script type='text/javascript' src='https://cdn.jsdelivr.net/wp/wp-editormd/tags/10.0.8/assets/Prism.js/plugins/autoloader/prism-autoloader.min.js?ver=1.15.0'></script>
<script type='text/javascript' src='https://cdn.jsdelivr.net/wp/wp-editormd/tags/10.0.8/assets/Prism.js/plugins/toolbar/prism-toolbar.min.js?ver=1.15.0'></script>
<script type='text/javascript' src='https://cdn.jsdelivr.net/wp/wp-editormd/tags/10.0.8/assets/Prism.js/plugins/line-numbers/prism-line-numbers.min.js?ver=1.15.0'></script>
<script type='text/javascript' src='https://cdn.jsdelivr.net/wp/wp-editormd/tags/10.0.8/assets/Prism.js/plugins/show-language/prism-show-language.min.js?ver=1.15.0'></script>
<script type='text/javascript' src='https://cdn.jsdelivr.net/wp/wp-editormd/tags/10.0.8/assets/Prism.js/plugins/copy-to-clipboard/prism-copy-to-clipboard.min.js?ver=1.15.0'></script>
<script type='text/javascript' src='http://www.eryajf.net/wp-content/themes/Git-alpha/assets/js/app.js?ver=1.0'></script>
<script type='text/javascript'>
    var mejsL10n = {
        "language": "zh",
        "strings": {
            "mejs.install-flash": "\u60a8\u6b63\u5728\u4f7f\u7528\u7684\u6d4f\u89c8\u5668\u672a\u5b89\u88c5\u6216\u542f\u7528Flash\u64ad\u653e\u5668\uff0c\u8bf7\u542f\u7528\u60a8\u7684Flash\u64ad\u653e\u5668\u63d2\u4ef6\uff0c\u6216\u4ece https:\/\/get.adobe.com\/flashplayer\/ \u4e0b\u8f7d\u6700\u65b0\u7248\u3002",
            "mejs.fullscreen-off": "\u5173\u95ed\u5168\u5c4f",
            "mejs.fullscreen-on": "\u5168\u5c4f",
            "mejs.download-video": "\u4e0b\u8f7d\u89c6\u9891",
            "mejs.fullscreen": "\u5168\u5c4f",
            "mejs.time-jump-forward": ["\u524d\u8fdb1\u79d2", "\u524d\u8fdb%1\u79d2"],
            "mejs.loop": "\u5207\u6362\u5faa\u73af",
            "mejs.play": "\u64ad\u653e",
            "mejs.pause": "\u6682\u505c",
            "mejs.close": "\u5173\u95ed",
            "mejs.time-slider": "\u65f6\u95f4\u8f74",
            "mejs.time-help-text": "\u4f7f\u7528\u5de6\/\u53f3\u7bad\u5934\u952e\u6765\u524d\u8fdb\u4e00\u79d2\uff0c\u4e0a\/\u4e0b\u7bad\u5934\u952e\u6765\u524d\u8fdb\u5341\u79d2\u3002",
            "mejs.time-skip-back": ["\u540e\u90001\u79d2", "\u8df3\u56de%1\u79d2"],
            "mejs.captions-subtitles": "\u5b57\u5e55",
            "mejs.captions-chapters": "\u7ae0\u8282",
            "mejs.none": "\u65e0",
            "mejs.mute-toggle": "\u5207\u6362\u9759\u97f3",
            "mejs.volume-help-text": "\u4f7f\u7528\u4e0a\/\u4e0b\u7bad\u5934\u952e\u6765\u589e\u9ad8\u6216\u964d\u4f4e\u97f3\u91cf\u3002",
            "mejs.unmute": "\u53d6\u6d88\u9759\u97f3",
            "mejs.mute": "\u9759\u97f3",
            "mejs.volume-slider": "\u97f3\u91cf",
            "mejs.video-player": "\u89c6\u9891\u64ad\u653e\u5668",
            "mejs.audio-player": "\u97f3\u9891\u64ad\u653e\u5668",
            "mejs.ad-skip": "\u8df3\u8fc7\u5e7f\u544a",
            "mejs.ad-skip-info": ["1\u79d2\u540e\u8df3\u8fc7", "%1\u79d2\u540e\u8df3\u8fc7"],
            "mejs.source-chooser": "\u9009\u62e9\u6765\u6e90",
            "mejs.stop": "\u505c\u6b62",
            "mejs.speed-rate": "\u901f\u5ea6",
            "mejs.live-broadcast": "\u73b0\u573a\u76f4\u64ad",
            "mejs.afrikaans": "\u5357\u975e\u8377\u5170\u8bed",
            "mejs.albanian": "\u963f\u5c14\u5df4\u5c3c\u4e9a\u8bed",
            "mejs.arabic": "\u963f\u62c9\u4f2f\u8bed",
            "mejs.belarusian": "\u767d\u4fc4\u7f57\u65af\u8bed",
            "mejs.bulgarian": "\u4fdd\u52a0\u5229\u4e9a\u8bed",
            "mejs.catalan": "\u52a0\u6cf0\u7f57\u5c3c\u4e9a\u8bed",
            "mejs.chinese": "\u4e2d\u6587",
            "mejs.chinese-simplified": "\u7b80\u4f53\u4e2d\u6587",
            "mejs.chinese-traditional": "\u7e41\u4f53\u4e2d\u6587",
            "mejs.croatian": "\u514b\u7f57\u5730\u4e9a\u8bed",
            "mejs.czech": "\u6377\u514b\u8bed",
            "mejs.danish": "\u4e39\u9ea6\u8bed",
            "mejs.dutch": "\u8377\u5170\u8bed",
            "mejs.english": "\u82f1\u8bed",
            "mejs.estonian": "\u7231\u6c99\u5c3c\u4e9a\u8bed",
            "mejs.filipino": "\u83f2\u5f8b\u5bbe\u8bed",
            "mejs.finnish": "\u82ac\u5170\u8bed",
            "mejs.french": "\u6cd5\u8bed",
            "mejs.galician": "\u52a0\u5229\u897f\u4e9a\u8bed",
            "mejs.german": "\u5fb7\u8bed",
            "mejs.greek": "\u5e0c\u814a\u8bed",
            "mejs.haitian-creole": "\u6d77\u5730\u514b\u91cc\u5965\u5c14\u8bed",
            "mejs.hebrew": "\u5e0c\u4f2f\u6765\u8bed",
            "mejs.hindi": "\u5370\u5730\u8bed",
            "mejs.hungarian": "\u5308\u7259\u5229\u8bed",
            "mejs.icelandic": "\u51b0\u5c9b\u8bed",
            "mejs.indonesian": "\u5370\u5ea6\u5c3c\u897f\u4e9a\u8bed",
            "mejs.irish": "\u7231\u5c14\u5170\u8bed",
            "mejs.italian": "\u610f\u5927\u5229\u8bed",
            "mejs.japanese": "\u65e5\u8bed",
            "mejs.korean": "\u97e9\u8bed",
            "mejs.latvian": "\u62c9\u8131\u7ef4\u4e9a\u8bed",
            "mejs.lithuanian": "\u7acb\u9676\u5b9b\u8bed",
            "mejs.macedonian": "\u9a6c\u5176\u987f\u8bed",
            "mejs.malay": "\u9a6c\u6765\u8bed",
            "mejs.maltese": "\u9a6c\u8033\u4ed6\u8bed",
            "mejs.norwegian": "\u632a\u5a01\u8bed",
            "mejs.persian": "\u6ce2\u65af\u8bed",
            "mejs.polish": "\u6ce2\u5170\u8bed",
            "mejs.portuguese": "\u8461\u8404\u7259\u8bed",
            "mejs.romanian": "\u7f57\u9a6c\u5c3c\u4e9a\u8bed",
            "mejs.russian": "\u4fc4\u8bed",
            "mejs.serbian": "\u585e\u5c14\u7ef4\u4e9a\u8bed",
            "mejs.slovak": "\u65af\u6d1b\u4f10\u514b\u8bed",
            "mejs.slovenian": "\u65af\u6d1b\u6587\u5c3c\u4e9a\u8bed",
            "mejs.spanish": "\u897f\u73ed\u7259\u8bed",
            "mejs.swahili": "\u65af\u74e6\u5e0c\u91cc\u8bed",
            "mejs.swedish": "\u745e\u5178\u8bed",
            "mejs.tagalog": "\u4ed6\u52a0\u7984\u8bed",
            "mejs.thai": "\u6cf0\u8bed",
            "mejs.turkish": "\u571f\u8033\u5176\u8bed",
            "mejs.ukrainian": "\u4e4c\u514b\u5170\u8bed",
            "mejs.vietnamese": "\u8d8a\u5357\u8bed",
            "mejs.welsh": "\u5a01\u5c14\u58eb\u8bed",
            "mejs.yiddish": "\u610f\u7b2c\u7eea\u8bed"
        }
    };
</script>
<script type='text/javascript' src='http://www.eryajf.net/wp-includes/js/mediaelement/mediaelement-and-player.min.js?ver=4.2.6-78496d1'></script>
<script type='text/javascript' src='http://www.eryajf.net/wp-includes/js/mediaelement/mediaelement-migrate.min.js?ver=5.0.11'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var _wpmejsSettings = {
        "pluginPath": "\/wp-includes\/js\/mediaelement\/",
        "classPrefix": "mejs-",
        "stretching": "responsive"
    }; /* ]]> */
</script>
<script type='text/javascript' src='http://www.eryajf.net/wp-includes/js/mediaelement/wp-mediaelement.min.js?ver=5.0.11'></script>
<script type="text/javascript">
    window.onload = function() {
        emojify.setConfig({
            img_dir: "https://cdn.jsdelivr.net/wp/wp-editormd/tags/10.0.8/assets/Emojify.js/images/basic", //前端emoji资源地址 blacklist: { 'ids': [], 'classes': ['no-emojify'], 'elements': ['^script$', '^textarea$', '^pre$', '^code$'] } }); emojify.run(); }
</script>
<script type="text/javascript">
    Prism.plugins.autoloader.languages_path = "https://cdn.jsdelivr.net/wp/wp-editormd/tags/10.0.8/assets/Prism.js/components/";
</script>
<!-- 144 次查询 用时 0.294 秒, 耗费了 23.04MB 内存 -->
<script>
    with(document) 0[(getElementsByTagName("head")[0] || body).appendChild(createElement("script")).src = "http://www.eryajf.net/wp-content/themes/Git-alpha/assets/js/share.js?v=89860593.js?cdnversion=" + ~(-new Date() / 36e5)];
</script>
<!--eryajf鼠标单击特效-->
<script type="text/javascript">
    /* 鼠标特效 */
    function getColorRandom() { /* 随机颜色函数 */
        var c = "#";
        var cArray = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"];
        for(var i = 0; i < 6; i++) {
            var cIndex = Math.round(Math.random() * 15);
            c += cArray[cIndex];
        }
        return c;
    }
    var a_idx = 0;
    jQuery(document).ready(function($) {
        $("body").click(function(e) {
            var a = new Array("富强", "民主", "文明", "和谐", "自由", "平等", "公正", "法治", "爱国", "敬业", "诚信", "友善");
            var $i = $("<span/>").text(a[a_idx]);
            a_idx = (a_idx + 1) % a.length;
            var x = e.pageX,
                y = e.pageY;
            $i.css({
                "z-index": 999999999,
                "top": y - 20,
                "left": x,
                "position": "absolute",
                "font-weight": "bold",
                "color": getColorRandom()
            });
            $("body").append($i);
            $i.animate({
                "top": y - 180,
                "opacity": 0
            }, 1500, function() {
                $i.remove();
            });
        });
    });
</script>
<script src="http://www.eryajf.net/js/activate-power-mode.js"></script>
<script>
    POWERMODE.colorful = true; /* make power mode colorful，ture 为启用礼花特效*/
    POWERMODE.shake = false; /* turn off shake，false 为禁用震动特效*/
    document.body.addEventListener('input', POWERMODE);
</script>
</body>

</html>
<!--压缩前的大小: 83248 bytes; 压缩后的大小: 81966 bytes; 节约：1.54% -->