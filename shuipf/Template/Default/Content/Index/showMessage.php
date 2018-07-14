<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>大连万通驾校 | 学院信息</title>
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <script src="{$config_siteurl}statics/default/js/jquery1.42.min.js" type="text/javascript"></script>
    <script src="{$config_siteurl}statics/default/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <script src="{$config_siteurl}statics/default/js/studentInformation.js" type="text/javascript"></script>
    <link href="{$config_siteurl}statics/default/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="{$config_siteurl}statics/default/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="{$config_siteurl}statics/default/css/message.css" />
    <script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp&key=F3LBZ-BU4WD-DDB45-PNTON-6MULE-GRBVQ"></script>
    <!--[if lt IE 9]>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <![endif]-->
</head>
<body>
     <template file="content/header.php"/>

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

      <volist name="messages" id="message">
      <table bgcolor="#ffffff" border="1" bordercolor="#eeeeee" cellpadding="0" cellspacing="0" class="lc_blue" style="BORDER-COLLAPSE: collapse" width="100%">
<tbody><tr>
<td align="middle" bgcolor="#f6f6f6" class="style1" height="23" width="88">称呼</td>
<td align="left" bgcolor="#f6f6f6" class="style1" height="23" width="184">{$message.name}</td>
</tr>
<tr>
<td align="middle" class="style1" height="23" width="88">留言标题</td>
<td align="left" class="style1" colspan="3" height="23">{$message.infotitle}</td>
</tr>
<tr>
<td align="middle" bgcolor="#f6f6f6" class="style1" height="23" width="88">留言内容</td>
<td align="left" bgcolor="#f6f6f6" class="style1" colspan="3" height="23">{$message.body}</td>
</tr>
<tr>
<td align="middle" class="style1" height="23" width="88"><font color="#ff0000">万通回复</font></td>
<td align="left" class="style1" colspan="3" height="23">{$message.reply}</td>
</tr>
</tbody></table>
<hr size="1" color="#bad6a5" width="100%" style="margin:10px 0px;">

</volist>

<div class="sabrosus">
      
    </div>
  </div>
        </div>
         <template file="content/footer.php"/>
</body>
</html>
<script>
      var page={$Think.get.page};
      var count={$count};
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