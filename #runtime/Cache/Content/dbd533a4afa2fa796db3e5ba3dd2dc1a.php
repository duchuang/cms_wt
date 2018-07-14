<?php if (!defined('THINK_PATH')) exit(); if (!defined('SHUIPF_VERSION')) exit(); ?>
<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>系统后台 - <?php echo ($Config["sitename"]); ?></title>
<?php if (!defined('SHUIPF_VERSION')) exit(); ?><link href="<?php echo ($config_siteurl); ?>statics/css/admin_style.css" rel="stylesheet" />
<link href="<?php echo ($config_siteurl); ?>statics/js/artDialog/skins/default.css" rel="stylesheet" />
<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<script type="text/javascript">
//全局变量
var GV = {
    DIMAUB: "<?php echo ($config_siteurl); ?>",
	JS_ROOT: "<?php echo ($config_siteurl); ?>statics/js/"
};
</script>
<script src="<?php echo ($config_siteurl); ?>statics/js/wind.js"></script>
<script src="<?php echo ($config_siteurl); ?>statics/js/jquery.js"></script>
</head>
<body class="J_scroll_fixed">
<?php  $getMenu = isset($Custom)?$Custom:D('Admin/Menu')->getMenu(); if($getMenu) { ?>
<div class="nav">
  <?php
 if(!empty($menuReturn)){ echo '<div class="return"><a href="'.$menuReturn['url'].'">'.$menuReturn['name'].'</a></div>'; } ?>
  <ul class="cc">
    <?php
 foreach($getMenu as $r){ $app = $r['app']; $controller = $r['controller']; $action = $r['action']; ?>
    <li <?php echo $action==ACTION_NAME ?'class="current"':""; ?>><a href="<?php echo U("".$app."/".$controller."/".$action."",$r['parameter']);?>"><?php echo $r['name'];?></a></li>
    <?php
 } ?>
  </ul>
</div>
<?php } ?>
<div class="wrap J_check_wrap">
  <div class="table_list">
    <table width="100%">
        <colgroup>
        <col width="38">
        <col width="55">
        <col width="58">
        <col width="55">
        <col width="55">
        <col width="80">
        <col width="50">
        <col width="50" >
        <col width="50">
        <col width="50">
        <col width="10" >
        <col width="10">
        <col width="500">
        </colgroup>
        <thead>
          <tr>
            <td align='center'>序号</td>
            <td align='center'>类型</td>
            <td align='center'>学校/单位</td>
            <td align='center'>客户姓名</td>
            <td align='center'>手机</td>
            <td align='center'>QQ</td>
            <td align='center'>性别</td>
            <td align='center'>报名班型</td>
            <td align='center'>证件类型</td>
            <td align='center'>证件号</td>
            <td align='center'>是否本地户口</td>
            <td align='center'>是否有暂住证</td>
            <td align='center'>留言</td>
          </tr>
        </thead>
        <tbody>
        <?php if(is_array($users)): $i = 0; $__LIST__ = $users;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$user): $mod = ($i % 2 );++$i;?><tr>
          <td align='center'><?php echo ($user["id"]); ?></td>
          <td align='center'>个人</td>
          <td align='center'></td>
          <td align='center'><?php echo ($user["name"]); ?></td>
          <td align='center'><?php echo ($user["phone"]); ?></td>
          <td align='center'><?php echo ($user["QQ"]); ?></td>
          <td align='center'><?php echo ($user["sex"]); ?></td>
          <td align='center'><?php echo ($user["type"]); ?></td>
          <td align='center'><?php echo ($user["papers"]); ?></td>
          <td align='center'><?php echo ($user["papersId"]); ?></td>
          <td align='center'><?php echo ($user["isLocal"]); ?></td>
          <td align='center'><?php echo ($user["isStack"]); ?></td>
          <td align='center'><?php echo ($user["message"]); ?></td>
          </tr><?php endforeach; endif; else: echo "" ;endif; ?>
        <?php if(is_array($companys)): $i = 0; $__LIST__ = $companys;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$user): $mod = ($i % 2 );++$i;?><tr>
          <td align='center'><?php echo ($user["Id"]); ?></td>
          <td align='center'>团体</td>
          <td align='center'><?php echo ($user["company"]); ?></td>
          <td align='center'><?php echo ($user["name"]); ?></td>
          <td align='center'><?php echo ($user["phone"]); ?></td>
          <td align='center'><?php echo ($user["QQ"]); ?></td>
          <td align='center'><?php echo ($user["sex"]); ?></td>
          <td align='center'></td>
          <td align='center'></td>
          <td align='center'></td>
          <td align='center'></td>
          <td align='center'></td>
          <td align='center'><?php echo ($user["content"]); ?></td>
          </tr><?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
      </table>
  </div>
  </div>
</div>
<script src="<?php echo ($config_siteurl); ?>statics/js/common.js"></script>
</body>
</html>