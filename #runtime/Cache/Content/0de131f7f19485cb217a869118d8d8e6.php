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
  <a href="javascript:void(0)" onClick="javascript:openwinx('<?php echo U("StudentManage/add",array("catid"=>$catid));?>','')" class="btn" title="添加内容"><span class="add"></span>添加学员</a>

  <div class="h_a">温馨提示</div>
  <div class="prompt_text">
    <p>1、请添加以交报名费学员信息</p>
    <p>2、请及时与客户取得联系，下面的联系方式包含手机和QQ</p>
    <p>3、处理之后可点击处理按钮，防止重复联系，处理后的客户会出现在已处理栏</p>
  </div>
  <form name="myform" action="<?php echo U("StudentManage/index");?>" method="post" class="J_ajaxForm">
  <div class="table_list">
    <table width="100%">
        <colgroup>
        <col width="50">
        <col width="80">
        <col width="50">
        <col width="60">
        <col width="50">
        </colgroup>
        <thead>
          <tr>
            <td align='center'>序号</td>
            <td align='center'>证件号</td>
            <td align='center'>学员姓名</td>
            <td align='center'>手机号</td>
            <td align='center'>操作管理</td>
          </tr>
        </thead>
        <tbody>
        <?php if(is_array($studentmanage)): $i = 0; $__LIST__ = $studentmanage;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$msg): $mod = ($i % 2 );++$i;?><tr>
          <td align='center'><?php echo ($msg["Id"]); ?></td>
          <td align='center'><?php echo ($msg["paperId"]); ?></td>
          <td align='center'><?php echo ($msg["name"]); ?></td>
          <td align='center'><?php echo ($msg["phone"]); ?></td>
          
      <td align="center">
            <?php
 $op = array(); $op[] = '<a href="javascript:;;" onClick="javascript:openwinx(\''.U("StudentManage/edit",array("id"=>$msg['Id'])).'\',\'\')">修改</a>'; $op[] = '<a href="'.U("StudentManage/delete",array("id"=>$msg['Id'])).'" class="J_ajax_del" >删除</a>'; if(isModuleInstall('Comments')){ $op[] = '<a href="'.U('Comments/Comments/index',array('searchtype'=>2,'keyword'=>'c-'.$vo['catid'].'-'.$vo['id'].'')).'" target="_blank">评论</a>'; } echo implode(' | ',$op); ?>
            </td>

          </tr><?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
      </table>
    <div class="btn_wrap">
      <div class="btn_wrap_pd">
        <button class="btn btn_submit mr10 J_ajax_submit_btn" type="submit">排序</button>
      </div>
    </div>
  </div>
  </div>
</form>
</div>
<script src="<?php echo ($config_siteurl); ?>statics/js/common.js"></script>
</body>
</html>