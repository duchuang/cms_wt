<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><if condition=" isset($SEO['title']) && !empty($SEO['title']) ">{$SEO['title']}</if>{$SEO['site_title']}</title>
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <meta name="description" content="{$SEO['description']}" />
    <meta name="keywords" content="{$SEO['keyword']}" />
    <script src="{$config_siteurl}statics/default/js/jquery1.42.min.js" type="text/javascript"></script>
    <script src="{$config_siteurl}statics/default/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <link href="{$config_siteurl}statics/default/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="{$config_siteurl}statics/default/css/style.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <link href="{$config_siteurl}statics/default/css/style.css" rel="stylesheet" type="text/css" />
    <![endif]-->

    <script type="text/javascript" src="http://api.map.baidu.com/api?v=1.5&ak=fMhj7aDbPSjCVCDKBCoDLhbn"></script>
</head>
<body>
         <template file="content/header.php"/>

        <div id="main">
            <div id="slideBox" class="slideBox">
                <div class="hd">
                    <ul><li>1</li><li>2</li><li>3</li></ul>
                </div>
                <div class="bd">
                    <ul>
                        <li><img src="{$info[8].value}" /></li>
                        <li><img src="{$info[9].value}" /></li>
                        <li><img src="{$info[10].value}" /></li>
                    </ul>
                </div>

                <!-- 下面是前/后按钮代码，如果不需要删除即可 -->
                <a class="prev" href="javascript:void(0)"></a>
                <a class="next" href="javascript:void(0)"></a>

            </div>
            <div class="yuyue_menu">
                <ul class="link">
                <volist name="side_menus" id="menu">
                    <li>
                        <img src="{$menu.thumb}" /><a href="{$menu.url_cust}" target="_blank" >{$menu.title}</a>
                    </li>
                </volist>
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
                        <volist name="shto" id="shto">
	                        <div class="box_l">
	                            <div class="pic001"><img src="{$shto.thumb}" /></div>
	                            <div class="price">价格：<font>{$shto.price}</font> / 优惠价：{$shto.sale_price}</div>
	                            <div class="time">训练时间：{$shto.train_time}</div>
	                            <div class="box_r">_______</div>
	                        </div>
                        </volist>
                    </div>
                    <div id="auto" style="display:none">
                        <volist name="auto" id="auto">
                            <div class="box_l">
                                <div class="pic001"><img src="{$auto.thumb}" /></div>
                                <div class="price">价格：<font>{$auto.price}</font> / 优惠价：{$auto.sale_price}</div>
                                <div class="time">训练时间：{$auto.train_time}</div>
                                <div class="box_r">_______</div>
                            </div>
                        </volist>
                    </div>      
                </div>

                <div class="message">
                    <div class="hmessage">
                        <p>{$info[0].value}：{$info[2].value}</p>
                    </div>
                    <ul>
                        <li class="" id="">电话：{$info[1].value}</li>
                        <li class="" id="">手机：{$info[2].value}</li>
                        <li class="" id="">邮箱：{$info[3].value}</li>
                        <li class="" id="">地址：{$info[4].value}</li>
                    </ul>
                </div>


                <div class="news">
                    <div class="h_news">
                        <ul id="ObjNews">
                            <li><a><img src="{$config_siteurl}statics/default/images/news.png" border="0"></a></li>
                        </ul>
                    </div>
                    <div class="content">
                        <div class="cont_0">
                        <volist name="articles" id="article">
                            <div class="Index_News_list"><span class="l">· <a href="{$article.url}" title="{$article.title}">{$article.title}</a></span><span class="r">[{$article.inputtime|date="Y-m-d",###}]</span></div>
                        </volist>
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
                            
                                <volist name="caochs" id="coach">
                                    <li>
                                        <div class="pic"><a><img src="{$coach.thumb}" /></a></div>
                                        <div class="title"><a>{$coach.caoch_name}</a></div>
                                    </li>
                                </volist>
                            
                        </ul>
                    </div>
                </div>

                <script type="text/javascript">
                    jQuery(".picMarquee-left").slide({ mainCell: ".bd ul", autoPlay: true, effect: "leftMarquee", vis: 8, interTime: 50 });
                </script>

            </div>

        </div>
        <template file="content/footer.php"/>
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
