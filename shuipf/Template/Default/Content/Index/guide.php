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
    <link rel="stylesheet" type="text/css" href="{$config_siteurl}statics/default/css/codes.css" />
    <link href="{$config_siteurl}statics/default/css/stucar.css" rel="stylesheet" type="text/css" />
    <script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp&key=F3LBZ-BU4WD-DDB45-PNTON-6MULE-GRBVQ"></script>
    <!--[if lt IE 9]>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <![endif]-->
</head>
<body>
   <template file="content/header.php"/>s
        <div id="main">
            <div id="about">
      


                      <template file="content/sider.php" />
                               
                <div class="zi_you you">
                    <h4>学车须知</h4>      
                       {$page.content} 
                   
                </div><div class="clear"></div>
            </div>
        </div>     
        </div>  
        <template file="content/footer.php"/>
</body>
</html>
<script type="text/javascript">

</script>