<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><if condition=" isset($SEO['title']) && !empty($SEO['title']) ">{$SEO['title']}</if>{$SEO['site_title']}</title>
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <meta name="description" content="{$SEO['description']}" />
    <meta name="keywords" content="{$SEO['keyword']}" />
    <script src="{$config_siteurl}js/jquery1.42.min.js" type="text/javascript"></script>
    <script src="{$config_siteurl}js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <link href="{$config_siteurl}statics/default/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="{$config_siteurl}statics/default/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="{$config_siteurl}statics/default/css/banxing.css" />
    <script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp&key=F3LBZ-BU4WD-DDB45-PNTON-6MULE-GRBVQ"></script>
    <!--[if lt IE 9]>
    <link href="{$config_siteurl}css/style.css" rel="stylesheet" type="text/css" />
    <![endif]-->
</head>
<body>
    
<template file="content/header.php" />
        <div id="main">
            <div class="member">

<template file="content/sider.php" />

 <div class="you">
      <h4>班型信息</h4>
      <ul>
      <volist name="data" id="d">
        <li>
            <div class="bxlist">
                    <div class="one">
	                        <a title="{$d.title}"><img src="{$d.thumb}" alt="{$d.title}"></a></div>
                      <div class="two">
                        <dl>
                            <dt><a  title="{$d.title}">{$d.title}</a></dt>
                            <dd>
                                车型：{$d.models_car}
                                <br>学车费用：{$d.price} / 优惠价：{$d.sale_price}
                                <br>特点：{$d.Characteristic}
                                <br>介绍：{$d.Introduction}
                            </dd>
                        </dl>
                    </div>
                </div>
        </li>
        </volist>
      </ul>
  </div>
        </div>
<template file="content/footer.php"/>
</body>
</html>