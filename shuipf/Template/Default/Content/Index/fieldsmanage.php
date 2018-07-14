<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><if condition=" isset($SEO['title']) && !empty($SEO['title']) ">{$SEO['title']}</if>{$SEO['site_title']}</title>
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <meta name="description" content="{$SEO['description']}" />
    <meta name="keywords" content="{$SEO['keyword']}" /> 
    <script src="{$config_siteurl}statics/default/js/jquery1.42.min.js" type="text/javascript"></script>
    <script src="{$config_siteurl}statics/default/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="{$config_siteurl}statics/layer/layer.js" type="text/javascript"></script>
    <link href="{$config_siteurl}statics/default/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="{$config_siteurl}statics/default/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="{$config_siteurl}statics/default/css/codes.css" />
    <link rel="stylesheet" type="text/css" href="{$config_siteurl}statics/default/css/registration.css" />
    <script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp&key=F3LBZ-BU4WD-DDB45-PNTON-6MULE-GRBVQ"></script>
    <!--[if lt IE 9]>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <![endif]-->
</head>
<body>
     <template file="content/header.php" />
        <div id="main">
            <div class="member">
  <template file="content/sider.php" />
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
         <template file="content/footer.php"/>
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
        url  : "{:U('Index/processe')}",
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
