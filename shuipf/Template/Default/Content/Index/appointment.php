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
    <link rel="stylesheet" type="text/css" href="{$config_siteurl}statics/default/css/order.css" />
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
    
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="10">
    <tbody>
    <tr>
    <td align="right" class="wenzi">选择教练：<span class="red">*</span></td>
    <td>
    <select  class="field" name="name" id="info_phone">
          <option value ="volvo">Volvo</option>
          <option value ="saab">Saab</option>
          <option value="opel">Opel</option>
          <option value="audi">Audi</option>  
    </select>
    </td>
  <td><div id="info_phoneTip"></div></td>
    </tr>
<tr>
    <td align="right" class="wenzi">本人姓名：<span class="red">*</span></td>
    <td><input type="text" class="field" name="name" id="info_phone"></td>
  <td><div id="info_phoneTip"></div></td>
    </tr>
  <tr>
    <td align="right" class="wenzi">证件号：<span class="red">*</span></td>
    <td><input type="text" class="field" name="phone" id="info_phone"></td>
  <td><div id="info_phoneTip"></div></td>
    </tr>
      </tbody></table>
      <input name="" type="submit" class="btn btn001" id="webform_submit_button_132" value="">
  </div>
        </div>
         <template file="content/footer.php"/>
</body>
</html>