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
    <link href="{$config_siteurl}statics/default/css/about.css" rel="stylesheet" type="text/css" />
    <script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp&key=F3LBZ-BU4WD-DDB45-PNTON-6MULE-GRBVQ"></script>
    <!--[if lt IE 9]>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <![endif]-->
</head>
<body>
    <template file="content/header.php"/>

        <div id="main">
            <div id="about">
                <div class="zi_zuo">
      
                    <div class="leftnav">
                      <h2> 关于万通
                        <p>ABOUT US</p>
                      </h2>
                       <ul>
                       <volist name="left_menus" id="menu">
                                <li><a class="hover" href="#{$menu.catdir}" title="{$menu.catname}">{$menu.catname}</a></li>
                        </volist>
                            </ul>
                    </div> 
                </div>                 
                <div class="zi_you">
                    <h4>关于万通</h4>      
                    <volist name="pages" id="page">
                    <div id="{$page.title}" style="margin-top:20px;">
						<p>{$page.content}</p>
                    </div> 
                    </volist>
                </div>
                <div class="clear"></div>
            </div>
        </div>     
        <template file="content/footer.php"/>
</body>
</html>
<script type="text/javascript">

</script>