<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php if( isset($SEO['title']) && !empty($SEO['title']) ): echo ($SEO['title']); endif; echo ($SEO['site_title']); ?></title>
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <meta name="description" content="<?php echo ($SEO['description']); ?>" />
    <meta name="keywords" content="<?php echo ($SEO['keyword']); ?>" /> 
    <script src="<?php echo ($config_siteurl); ?>statics/default/js/jquery1.42.min.js" type="text/javascript"></script>
    <script src="<?php echo ($config_siteurl); ?>statics/default/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="<?php echo ($config_siteurl); ?>statics/layer/layer.js" type="text/javascript"></script>
    <link href="<?php echo ($config_siteurl); ?>statics/default/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo ($config_siteurl); ?>statics/default/css/style.css" rel="stylesheet" type="text/css" />
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
      <h4>我的档案</h4>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="10">
    <tbody>
      <tr>
        <td align="right" class="wenzi">证件号：<span class="red">*</span></td>
        <td><input type="text" class="field" name="papersId" id="info_phone"></td>
        <td><div id="info_phoneTip"><button type="button" id="yy" class="sub" value="成绩查询">成绩查询</button></div></td>
      </tr>  
    </tbody>
    
</table>
  <div id="content">
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
<script type="text/javascript">
//var index = layer.load();
$(document).ready(function() {
  $("#yy").click(function() 
  {
    if($(".field").val()!="")
    {
      var index;
      $("#content").empty();
      $.ajax ({
        type : "post",
        url  : "<?php echo U('Index/processe');?>",
        data : {
          phone     : $("#info_phone").val(),
        },
        success:function(data)
        { 
          $(".layui-layer").remove();
          var json = JSON.parse(data);     
          if(json.status == "no")
          {
            setTimeout("$('.layui-layer').remove()",2000);
            layer.msg('证件号有误');
          }
          else(json.status == "ok")
          {
            for(var info in json.data)
            {
              $('#content').append("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-left: solid 1px #dedede;border-top: solid 1px #dedede;border-right: solid 1px #dedede;\"><tbody><tr style=\"display: table-row;vertical-align: inherit;border-color: inherit;\"><th align=\"center\" style=\"background: #f0f0f0;line-height: 30px;border-bottom: solid 1px #dedede;color: #444444;\">证件号</th><th align=\"center\" style=\"background: #f0f0f0;line-height: 30px;border-bottom: solid 1px #dedede;color: #444444;\">姓名</th><th align=\"center\" style=\"background: #f0f0f0;line-height: 30px;border-bottom: solid 1px #dedede;color: #444444;\">考试进度</th></tr><tr style=\"display: table-row;vertical-align: inherit;border-color: inherit;\"><td align=\"center\" style=\"line-height: 33px;border-bottom: solid 1px #dedede;\">"+json.data[info].userId+"</td><td align=\"center\" style=\"line-height: 33px;border-bottom: solid 1px #dedede;\">"+json.data[info].name+"</td><td align=\"center\" style=\"border-bottom: solid 1px #dedede;\">"+json.data[info].processe+"</a></td></tr></tbody></table>");
            }
          }
        }
      });
      layer.msg('查询中', {icon: 16});
      }
else
{
  setTimeout("$('.layui-layer').remove()",2000);
  layer.msg('请先输入');
}
    });

});
</script>
<!-- <div><div align=\"center\" class=\"wenzi\">证件号：<span class=\"red\">&nbsp;"+json.data[info].userId+"</span></div><div align=\"center\" class=\"wenzi\">姓名：<span class=\"red\">&nbsp;"+json.data[info].name+"</span></div><div align=\"center\" class=\"wenzi\">考试进度：<span class=\"red\">&nbsp;"+json.data[info].processe+"</span></div></div> -->

<!-- <div><div style=\"text-align:center;font-size:32px;margin-top: 11%\">证件号：<span class=\"red\">&nbsp;"+json.data[info].userId+"</span></div><div style=\"text-align:center;font-size:32px;margin-top: 11%\">姓名：<span class=\"red\">&nbsp;"+json.data[info].name+"</span></div><div style=\"text-align:center;font-size:32px;margin-top: 11%\">考试进度：<span class=\"red\">&nbsp;"+json.data[info].processe+"</span></div></div> -->