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
<div class="wrap J_check_wrap">
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
  <div class="table_list">
  <form action="/index.php/Registration/handle.html"  method="post">
    <table width="100%">
        <colgroup>
        <col width="38">
        <col width="55">
        <col width="80">
        <col width="55">
        <col width="100">
        <col width="500" >
        <col width="460" >
        </colgroup>
        <thead>
          <tr>
            <td align='center'>序号</td>
            <td align='center'>客户姓名</td>
            <td align='center'>联系手机</td>
            <td align='center'>反馈类型</td>
            <td align='center'>信息标题</td>
            <td align='center'>内容</td>
            <td align='center'>回复</td>
          </tr>
        </thead>
        <tbody>
        <?php if(is_array($messages)): $i = 0; $__LIST__ = $messages;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$message): $mod = ($i % 2 );++$i;?><tr>
          <td align='center'><?php echo ($message["id"]); ?><input type="hidden" value="<?php echo ($message["id"]); ?>" name="id" /></td>
          <td align='center'><?php echo ($message["name"]); ?></td>
          <td align='center'><?php echo ($message["phone"]); ?></td>
          <td align='center'><?php echo ($message["infotitle"]); ?></td>
          <td align='center'><?php echo ($message["type"]); ?></td>
          <td align='center'><?php echo ($message["body"]); ?></td>
          <td align='center'>
              <?php echo ($message["reply"]); ?>
          </td>
          </tr><?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
      </table>
    </form>
  </div>
  </div>
</div>
<script src="<?php echo ($config_siteurl); ?>statics/js/common.js"></script>
</body>
</html>