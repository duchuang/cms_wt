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
    <link  href="<?php echo ($config_siteurl); ?>statics/default/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="<?php echo ($config_siteurl); ?>statics/default/css/codes.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo ($config_siteurl); ?>statics/default/css/registration.css" />
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
            <div class="member">
    <div class="zuo">
    <div class="erji_content_L">
        <ul class="fl">
        <?php if(is_array($side_menus)): $i = 0; $__LIST__ = $side_menus;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$menu): $mod = ($i % 2 );++$i;?><li>
            <a href="<?php echo ($menu["url_cust"]); ?>" target="_blank"><?php echo ($menu["title"]); ?></a>
          </li><?php endforeach; endif; else: echo "" ;endif; ?>
          </ul>
          <div class="lxwm_1">
          <img src="<?php echo ($config_siteurl); ?>statics/default/images/hyzx.jpg">
          <p>24H报名电话：<?php echo ($info[2]["value"]); ?> <?php echo ($info[0]["value"]); ?></p>
          <p>报名地址：<?php echo ($info[4]["value"]); ?></p></div></div>
  </div>
 <div class="you">
      <h4>团体报名</h4>
     <form method="post" id="webform_submit_132" action="/index.php/Index/groupIn.html">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="10">
    <tbody><tr>
    <td width="30%" align="right" class="wenzi">学校/单位：<span class="red">*</span></td>
    <td width="34%"><input type="text" class="field" name="company" id="info_name"></td>
    <td align="left"><div id="info_nameTip"></div></td>
  </tr>
<tr>
    <td align="right" class="wenzi">联系人：<span class="red">*</span></td>
    <td><input type="text" class="field" name="name" id="info_phone"></td>
  <td><div id="info_phoneTip"></div></td>
    </tr>
  <tr>
    <td align="right" class="wenzi">联系手机：<span class="red">*</span></td>
    <td><input type="text" class="field" name="phone" id="info_phone"></td>
  <td><div id="info_phoneTip"></div></td>
    </tr>
     <tr>
      <tr>
    <td align="right" class="wenzi">QQ：<span class="red">*</span></td>
    <td><input type="text" class="field" name="QQ" id="info_phone"></td>
  <td><div id="info_phoneTip"></div></td>
    </tr>
     <tr>
    <td align="right" class="wenzi">性别：<span class="red">*</span></td>
    <td colspan="2">
  <label><input type="radio" name="sex" id="info_gender-1" value="1" checked="checked"> 男</label>　<label><input type="radio" name="sex" id="info_gender-2" value="2"> 女</label></td>
    </tr>
    <tr>
    <td align="right" class="wenzi">情况描述：<span class="red">&nbsp;</span></td>
    <td colspan="2"><textarea type="text" id="info_content" name="content" class="text" style="width:425px; height:115px;"></textarea></td>
    </tr>
    <tr>
    <td align="right" class="wenzi"></td>
    <td colspan="2"><input name="" type="submit" class="btn btn001" id="webform_submit_button_132" value=""><input name="" type="reset" class="btn btn002" id="" value=""></td>
    </tr>
      </tbody></table>
    </form>
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