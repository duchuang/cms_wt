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
      <form method="POST" id="webform_submit_132" action="/index.php/Index/messageIn.html">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="10">
    <tbody><tr>
    <td width="30%" align="right" class="wenzi">姓名：<span class="red">*</span></td>
    <td width="34%"><input type="text" class="field" name="name" id="info_name"></td>
    <td align="left"><div id="info_nameTip"></div></td>
  </tr>

  <tr>
    <td align="right" class="wenzi">联系手机：<span class="red">*</span></td>
    <td><input type="text" class="field" name="phone" id="info_phone"></td>
  <td><div id="info_phoneTip"></div></td>
    </tr>
     <tr>
    <td align="right" class="wenzi">反馈类型：<span class="red">*</span></td>
    <td colspan="2">
  <label><input type="radio" name="type" id="info_gender-1" value="投诉" checked="checked"> 投诉</label>　<label><input type="radio" name="type" id="info_gender-2" value="咨询"> 咨询</label>　<label><input type="radio" name="type" id="info_gender-3" value="建议"> 建议</label></td>
    </tr>
  
  <tr>
    <td align="right" class="wenzi">信息标题：<span class="red">*</span></td>
    <td><input type="text" class="field" name="title" id="info_title"></td>
    <td><div id="info_titleTip"></div></td>
  </tr>
   
    <tr>
    <td align="right" class="wenzi">内容：<span class="red">&nbsp;</span></td>
    <td colspan="2"><textarea type="text" id="info_content" name="body" class="text" style="width:425px; height:115px;"></textarea></td>
    </tr>
    <tr>
    <td align="right" class="wenzi"></td>
    <td colspan="2"><input name="" type="submit" class="btn btn001" id="webform_submit_button_132" value=""><input name="" type="reset" class="btn btn002" id="" value=""></td>
    </tr>
      </tbody></table>
    </form>
  </div>
        </div>
         <template file="content/footer.php"/>
</body>
</html>