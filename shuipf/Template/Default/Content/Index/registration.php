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
      <h4>个人报名</h4>
     <form method="post" id="webform_submit_132" action="/index.php/Index/registrationIn.html">
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
  <td align="right" class="wenzi">报名班型：<span class="red">*</span></td>
  <td>
    <select class="field" name="type">
    <volist name="types" id="type">
    <option value="{$type.catid}">{$type.title}</option>
    </volist>
    </select>
  </td>
  </tr>
  <tr>
  <td align="right" class="wenzi">证件类型：<span class="red">*</span></td>
  <td>
    <select class="field" name="papers">
    <volist name="papers" id="p">
    <option value="{$p}">{$p}</option>
    </volist>
    </select>
  </td>
  </tr>
  <tr>
    <td align="right" class="wenzi">证件号：<span class="red">*</span></td>
    <td><input type="text" class="field" name="papersId" id="info_phone"></td>
  <td><div id="info_phoneTip"></div></td>
    </tr>
  <tr>
  <tr>
    <td align="right" class="wenzi">是否本地户口：<span class="red">*</span></td>
    <td colspan="2">
  <label><input type="radio" name="isLocal" id="info_gender-1" value="1" checked="checked"> 是</label>　<label><input type="radio" name="info[gender]" id="info_gender-2" value="2"> 否</label></td>
    </tr>
  <tr>
  <tr>
    <td align="right" class="wenzi">是否有暂住证：</td>
    <td colspan="2">
  <label><input type="radio" name="isShack" id="info_gender-1" value="1" checked="checked"> 是</label>　<label><input type="radio" name="info[gender]" id="info_gender-2" value="2"> 否</label></td>
    </tr>
   
    <tr>
    <td align="right" class="wenzi">备注：<span class="red">&nbsp;</span></td>
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
         <template file="content/footer.php"/>
</body>
</html>