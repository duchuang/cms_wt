<?php if (!defined('THINK_PATH')) exit(); if (!defined('SHUIPF_VERSION')) exit(); ?>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php if( isset($SEO['title']) && !empty($SEO['title']) ): echo ($SEO['title']); endif; echo ($SEO['site_title']); ?></title>
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <meta name="description" content="<?php echo ($SEO['description']); ?>" />
    <meta name="keywords" content="<?php echo ($SEO['keyword']); ?>" />
    <script src="<?php echo ($config_siteurl); ?>statics/default/js/jquery1.42.min.js" type="text/javascript"></script>
    <script src="<?php echo ($config_siteurl); ?>statics/default/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <link href="<?php echo ($config_siteurl); ?>statics/default/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo ($config_siteurl); ?>statics/default/css/style.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <link href="<?php echo ($config_siteurl); ?>statics/default/css/style.css" rel="stylesheet" type="text/css" />
    <![endif]-->

    <script type="text/javascript" src="http://api.map.baidu.com/api?v=1.5&ak=fMhj7aDbPSjCVCDKBCoDLhbn"></script>
</head>
<body>
            <div class="container">
        <div id="header">
            <div class="w1000">
                <div class="logo"><img src="<?php echo ($config_siteurl); ?>statics/default/images/logo.png" alt="大连万通logo" /></div>
                <div class="menu">
                    <ul>
					<?php if(is_array($menus)): $i = 0; $__LIST__ = $menus;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$menu): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($menu["url_cust"]); ?>" target="_blank" ><?php echo ($menu["title"]); ?><span class="en_title"><?php echo ($menu["en_title"]); ?></span><span class="arrow"><img src="<?php echo ($config_siteurl); ?>statics/default/images/arrow.png" /></span></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
					</ul>
                </div>
                <div class="cb"></div>
            </div>
        </div>
<script src="<?php echo ($config_siteurl); ?>statics/default/js/Customer.js" type="text/javascript"></script>

 <script src="<?php echo ($config_siteurl); ?>statics/layer/layer.js" type="text/javascript"></script>


    <link href="<?php echo ($config_siteurl); ?>statics/default/css/Customer.css" rel="stylesheet" type="text/css" />
    <script>
    function Contact()
    {
        setTimeout("setClose()",1000);
        layer.alert('电话：<?php echo ($info[1]["value"]); ?><br />手机：<?php echo ($info[2]["value"]); ?><br />邮箱：<?php echo ($info[3]["value"]); ?><br />地址：<?php echo ($info[4]["value"]); ?>', {
        skin: 'layui-layer-lan',
        shift: 1 //动画类型
        });
    }

    function setClose()
    {
        $(".layui-layer-btn0").click(function(){
            $(".layui-layer-shade").remove();
            $(".layui-layer").remove();
        });
        $(".layui-layer-ico").click(function(){
                $(".layui-layer-shade").remove();
            $(".layui-layer").remove();
        });
    }
    
    </script>

        <div id="main">
            <div id="slideBox" class="slideBox">
                <div class="hd">
                    <ul><li>1</li><li>2</li><li>3</li></ul>
                </div>
                <div class="bd">
                    <ul>
                        <li><img src="<?php echo ($info[8]["value"]); ?>" /></li>
                        <li><img src="<?php echo ($info[9]["value"]); ?>" /></li>
                        <li><img src="<?php echo ($info[10]["value"]); ?>" /></li>
                    </ul>
                </div>

                <!-- 下面是前/后按钮代码，如果不需要删除即可 -->
                <a class="prev" href="javascript:void(0)"></a>
                <a class="next" href="javascript:void(0)"></a>

            </div>
            <div class="yuyue_menu">
                <ul class="link">
                <?php if(is_array($side_menus)): $i = 0; $__LIST__ = $side_menus;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$menu): $mod = ($i % 2 );++$i;?><li>
                        <img src="<?php echo ($menu["thumb"]); ?>" /><a href="<?php echo ($menu["url_cust"]); ?>" target="_blank" ><?php echo ($menu["title"]); ?></a>
                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
            <div id="line-blue"></div>
            <div class="chexing">
                <div class="cleft">
                    <ul id="type">
                        <li value="1" class="sd01" id="m01">手动档</li>
                        <li value="2" class="sd02" id="m02">自动档</li>
                        <li class="banxing"><a href="" onclick="" title="点击定制班型">班型定制</a></li>
                    </ul>
                    <div class="clear"></div>
                    <div id="shto">
                        <?php if(is_array($shto)): $i = 0; $__LIST__ = $shto;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$shto): $mod = ($i % 2 );++$i;?><div class="box_l">
	                            <div class="pic001"><img src="<?php echo ($shto["thumb"]); ?>" /></div>
	                            <div class="price">价格：<font><?php echo ($shto["price"]); ?></font> / 优惠价：<?php echo ($shto["sale_price"]); ?></div>
	                            <div class="time">训练时间：<?php echo ($shto["train_time"]); ?></div>
	                            <div class="box_r">_______</div>
	                        </div><?php endforeach; endif; else: echo "" ;endif; ?>
                    </div>
                    <div id="auto" style="display:none">
                        <?php if(is_array($auto)): $i = 0; $__LIST__ = $auto;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$auto): $mod = ($i % 2 );++$i;?><div class="box_l">
                                <div class="pic001"><img src="<?php echo ($auto["thumb"]); ?>" /></div>
                                <div class="price">价格：<font><?php echo ($auto["price"]); ?></font> / 优惠价：<?php echo ($auto["sale_price"]); ?></div>
                                <div class="time">训练时间：<?php echo ($auto["train_time"]); ?></div>
                                <div class="box_r">_______</div>
                            </div><?php endforeach; endif; else: echo "" ;endif; ?>
                    </div>      
                </div>

                <div class="message">
                    <div class="hmessage">
                        <p><?php echo ($info[0]["value"]); ?>：<?php echo ($info[2]["value"]); ?></p>
                    </div>
                    <ul>
                        <li class="" id="">电话：<?php echo ($info[1]["value"]); ?></li>
                        <li class="" id="">手机：<?php echo ($info[2]["value"]); ?></li>
                        <li class="" id="">邮箱：<?php echo ($info[3]["value"]); ?></li>
                        <li class="" id="">地址：<?php echo ($info[4]["value"]); ?></li>
                    </ul>
                </div>


                <div class="news">
                    <div class="h_news">
                        <ul id="ObjNews">
                            <li><a><img src="<?php echo ($config_siteurl); ?>statics/default/images/news.png" border="0"></a></li>
                        </ul>
                    </div>
                    <div class="content">
                        <div class="cont_0">
                        <?php if(is_array($articles)): $i = 0; $__LIST__ = $articles;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$article): $mod = ($i % 2 );++$i;?><div class="Index_News_list"><span class="l">· <a href="<?php echo ($article["url"]); ?>" title="<?php echo ($article["title"]); ?>"><?php echo ($article["title"]); ?></a></span><span class="r">[<?php echo (date("Y-m-d",$article["inputtime"])); ?>]</span></div><?php endforeach; endif; else: echo "" ;endif; ?>
                        </div>
                    </div>
                </div>

                <div class="maps">
                    <div style="width:270px; height:206px" id="container"></div>
                </div>

                <div class="picMarquee-left">
                    <div class="hd">
                        <a class="next"></a>
                        <a class="prev"></a>
                    </div>
                    <div class="bd">
                        <ul class="picList">
                            
                                <?php if(is_array($caochs)): $i = 0; $__LIST__ = $caochs;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$coach): $mod = ($i % 2 );++$i;?><li>
                                        <div class="pic"><a><img src="<?php echo ($coach["thumb"]); ?>" /></a></div>
                                        <div class="title"><a><?php echo ($coach["caoch_name"]); ?></a></div>
                                    </li><?php endforeach; endif; else: echo "" ;endif; ?>
                            
                        </ul>
                    </div>
                </div>

                <script type="text/javascript">
                    jQuery(".picMarquee-left").slide({ mainCell: ".bd ul", autoPlay: true, effect: "leftMarquee", vis: 8, interTime: 50 });
                </script>

            </div>

        </div>
                <div class="clear"></div>
        <div class="banner001">
            <div class="bannerwz"><?php echo ($info[7]["value"]); ?></div>
        </div>
        <div id="footer">
            <p><?php echo ($info[6]["value"]); ?>  版权所有     地址：<?php echo ($info[4]["value"]); ?>     手机：<?php echo ($info[2]["value"]); ?> <?php echo ($info[0]["value"]); ?></p>
            <p><?php echo ($info[6]["value"]); ?> 祝所有学员顺利通过考试</p>
        </div>
    </div>
</body>
</html>

<script type="text/javascript">
    var map = new BMap.Map("container");          // 创建地图实例  
var point = new BMap.Point(121.646276,38.927427);  // 创建点坐标  
map.centerAndZoom(point, 10);   
var point1 = new BMap.Point(121.5965,38.924809); 
var point2 = new BMap.Point(121.61825,39.026418); 
var point3 = new BMap.Point(121.652938,38.929398); 
var point4 = new BMap.Point(121.609321,39.047997); 
var marker = new BMap.Marker(point);        // 创建标注  
var marker1 = new BMap.Marker(point1);        // 创建标注    
var marker2 = new BMap.Marker(point2);        // 创建标注    
var marker3 = new BMap.Marker(point3);        // 创建标注      
var marker4 = new BMap.Marker(point4);        // 创建标注    
map.addOverlay(marker);  
map.addOverlay(marker1);  
map.addOverlay(marker2);  
map.addOverlay(marker3);  
map.addOverlay(marker4);  
var opts = {type: BMAP_NAVIGATION_CONTROL_SMALL}    
map.addControl(new BMap.NavigationControl(opts));
$("#type").ready(function(){
        $("#type>li").click(function(){
            if(this.value=="1")
            {
                $("#auto").css("display","none");
                $("#shto").css("display","block");
            }
            else
            {
                $("#auto").css("display","block");
                $("#shto").css("display","none");
            }
            
        });
    });
    jQuery(".slideBox").slide({ mainCell: ".bd ul", autoPlay: true });
    // var map = new qq.maps.Map(document.getElementById("container"), {
    //     // 地图的中心地理坐标。
    //     center: new qq.maps.LatLng(38.95, 121.57),
    //     minZoom: 10,
    //     name: "万通驾校"
    // });

</script>