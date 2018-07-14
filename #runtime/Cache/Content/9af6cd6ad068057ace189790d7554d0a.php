<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>大连万通驾校 | 学院信息</title>
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <script src="<?php echo ($config_siteurl); ?>statics/default/js/jquery1.42.min.js" type="text/javascript"></script>
    <script src="<?php echo ($config_siteurl); ?>statics/default/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="<?php echo ($config_siteurl); ?>statics/default/js/studentInformation.js" type="text/javascript"></script>
    <link href="<?php echo ($config_siteurl); ?>statics/default/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link media="screen and (max-width:999px)" href="<?php echo ($config_siteurl); ?>statics/default/css/phone.css" rel="stylesheet" type="text/css" />
    <link media="screen and (min-width:1000px)" href="<?php echo ($config_siteurl); ?>statics/default/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="<?php echo ($config_siteurl); ?>statics/default/css/message.css" />
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
					<?php if(is_array($menus)): $i = 0; $__LIST__ = $menus;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$menu): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($menu["url_cust"]); ?>" target="_blank" ><?php echo ($menu["title"]); ?><span><?php echo ($menu["en_title"]); ?></span><span class="arrow"><img src="<?php echo ($config_siteurl); ?>statics/default/images/arrow.png" /></span></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
					</ul>
                </div>
                <div class="cb"></div>
            </div>
        </div>
<script src="<?php echo ($config_siteurl); ?>statics/default/js/Customer.js" type="text/javascript"></script>
 <script src="<?php echo ($config_siteurl); ?>statics/layer/layer.js" type="text/javascript"></script>
    <link media="screen and (min-width:1000px)" href="<?php echo ($config_siteurl); ?>statics/default/css/Customer.css" rel="stylesheet" type="text/css" />
    <script>
    function Contact()
    {
         $(".layui-layer-setwin").click(function(){
            $(".layui-layer-shade").remove();
            $(".layui-layer").remove();
        });
        $(".layui-layer-btn0").click(function(){
            $(".layui-layer-shade").remove();
            $(".layui-layer").remove();
        });
        layer.alert('电话：<?php echo ($info[1]["value"]); ?><br />手机：<?php echo ($info[2]["value"]); ?><br />邮箱：<?php echo ($info[3]["value"]); ?><br />地址：<?php echo ($info[4]["value"]); ?>', {
        skin: 'layui-layer-lan',
        shift: 4 //动画类型
        });


    }
    
    </script>

        <div id="main">
            <div class="member">
  <div class="zuo">
    <h2>留言中心</h2>
    
    <div class="lm">
      <h3>留言操作</h3>
      <ul>
        <li><a node-menu="main" href="/index.php/Index/message.html" title="我要留言" class="hover">我要留言</a></li>
        <li><a node-menu="main" href="/index.php/Index/showMessage/page/1.html" title="查看留言" class="hover">查看留言</a></li>
      </ul>
      </ul>
    </div>
  </div>
 <div class="you">
      <h4>留言中心</h4>

      <?php if(is_array($messages)): $i = 0; $__LIST__ = $messages;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$message): $mod = ($i % 2 );++$i;?><table bgcolor="#ffffff" border="1" bordercolor="#eeeeee" cellpadding="0" cellspacing="0" class="lc_blue" style="BORDER-COLLAPSE: collapse" width="100%">
<tbody><tr>
<td align="middle" bgcolor="#f6f6f6" class="style1" height="23" width="88">称呼</td>
<td align="left" bgcolor="#f6f6f6" class="style1" height="23" width="184"><?php echo ($message["name"]); ?></td>
</tr>
<tr>
<td align="middle" class="style1" height="23" width="88">留言标题</td>
<td align="left" class="style1" colspan="3" height="23"><?php echo ($message["infotitle"]); ?></td>
</tr>
<tr>
<td align="middle" bgcolor="#f6f6f6" class="style1" height="23" width="88">留言内容</td>
<td align="left" bgcolor="#f6f6f6" class="style1" colspan="3" height="23"><?php echo ($message["body"]); ?></td>
</tr>
<tr>
<td align="middle" class="style1" height="23" width="88"><font color="#ff0000">万通回复</font></td>
<td align="left" class="style1" colspan="3" height="23"><?php echo ($message["reply"]); ?></td>
</tr>
</tbody></table>
<hr size="1" color="#bad6a5" width="100%" style="margin:10px 0px;"><?php endforeach; endif; else: echo "" ;endif; ?>

<div class="sabrosus">
      
    </div>
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
<script>
      var page=<?php echo ($_GET['page']); ?>;
      var count=<?php echo ($count); ?>;
      var html="";
      if(page==1)
      {
        html+="<span class='disabled'>&lt;</span>";
      }
      else
      {
            html+="<a href='../page/"+(page-1)+".html' >&lt;</span>";
      }

      for(var i=1;i<=count;i++)
      {
        if(i==page)
        {
            html+="<span class='current'>"+i+"</span>";
        }
        else
        {
            html+="<a href='../page/"+i+".html'>"+i+"</a>";
        }
      }

      if(page==count)
      {
        html+="<span class='disabled'>&gt;</span>";
      }
      else
      {
        html+="<a href='../page/"+(page+1)+".html' >&gt;</span>";
      }
      $(".sabrosus").append(html);
      </script>