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

  <div class="h_a">温馨提示</div>
  <div class="prompt_text">
    <p>1、请添加以交报名费学员信息</p>
    <p>2、请及时与客户取得联系，下面的联系方式包含手机和QQ</p>
    <p>3、处理之后可点击处理按钮，防止重复联系，处理后的客户会出现在已处理栏</p>
  </div>
  <form name="myform" action="<?php echo U("OrderManage/index");?>" method="post" class="J_ajaxForm">
  <div class="table_list">
    <table width="100%">
        <colgroup>
        <col width="50">
        <col width="50">
        <col width="50">
        <col width="50">
        <col width="50">
        <col width="60">
        <col width="50">
        </colgroup>
        <thead>
          <tr>
            <td align='center'>序号</td>
            <td align='center'>教练</td>
            <td align='center'>车牌号</td>
            <td align='center'>日期</td>
            <td align='center'>时间</td>
            <td align='center'>今日预约学员</td>
            <td align='center'>操作管理</td>
          </tr>
        </thead>
        <tbody>
        <?php if(is_array($ordermanage)): $i = 0; $__LIST__ = $ordermanage;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$msg): $mod = ($i % 2 );++$i;?><tr>
          <td align='center'><?php echo ($msg["Id"]); ?></td>
          <td align='center'><?php echo ($msg["coachename"]); ?></td>
          <td align='center'><?php echo ($msg["number"]); ?></td>
          <td align='center'><?php echo ($msg["date"]); ?></td>
          <td align='center'><?php echo ($msg["time"]); ?></td>
          <td align='center'><?php echo ($msg["studentId"]); ?></td>
          
      <td align="center">
            <?php
 $op = array(); $op[] = '<a href="javascript:;;" onClick="javascript:openwinx(\''.U("OrderManage/edit",array("id"=>$msg['Id'])).'\',\'\')">修改</a>'; $op[] = '<a href="'.U("OrderManage/delete",array("id"=>$msg['Id'])).'" class="J_ajax_del" >删除</a>'; if(isModuleInstall('Comments')){ $op[] = '<a href="'.U('Comments/Comments/index',array('searchtype'=>2,'keyword'=>'c-'.$vo['catid'].'-'.$vo['id'].'')).'" target="_blank">评论</a>'; } echo implode(' | ',$op); ?>
            </td>

          </tr><?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
      </table>
    
  </div>
  </div>
</form>
</div>
<script src="<?php echo ($config_siteurl); ?>statics/js/common.js"></script>
</body>
</html>