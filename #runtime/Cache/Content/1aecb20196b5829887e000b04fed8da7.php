<?php if (!defined('THINK_PATH')) exit();?><html>
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
    <link href="<?php echo ($config_siteurl); ?>statics/default/css/about.css" rel="stylesheet" type="text/css" />
    <script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp&key=F3LBZ-BU4WD-DDB45-PNTON-6MULE-GRBVQ"></script>
    <!--[if lt IE 9]>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <![endif]-->
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
            <div id="about">
                <div class="zi_zuo">
      
                    <div class="leftnav">
                      <h2> 关于万通
                        <p>ABOUT US</p>
                      </h2>
                       <ul>
                       <?php if(is_array($left_menus)): $i = 0; $__LIST__ = $left_menus;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$menu): $mod = ($i % 2 );++$i;?><li><a class="hover" href="#<?php echo ($menu["catdir"]); ?>" title="<?php echo ($menu["catname"]); ?>"><?php echo ($menu["catname"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                            </ul>
                    </div> 
                </div>                 
                <div class="zi_you">
                    <h4>关于万通</h4>      
                    <?php if(is_array($pages)): $i = 0; $__LIST__ = $pages;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$page): $mod = ($i % 2 );++$i;?><div id="<?php echo ($page["title"]); ?>" style="margin-top:20px;">
						<p><?php echo ($page["content"]); ?></p>
                    </div><?php endforeach; endif; else: echo "" ;endif; ?>
                </div>
                <div class="clear"></div>
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
</body>
</html>
<script type="text/javascript">

</script>