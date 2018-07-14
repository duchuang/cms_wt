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
    <p>1、请及时与客户取得联系，下面的联系方式包含手机和QQ</p>
    <p>2、处理之后可点击处理按钮，防止重复联系，处理后的客户会出现在已处理栏</p>
  </div>
  <div class="table_list">
  
    <table width="100%">
        <colgroup>
        <col width="28">
        <col width="38">
        <col width="55">
        <col width="55">
        <col width="55">
        <col width="80">
        <col width="100">
        <col width="50" >
        <col width="100">
        <col width="300">
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
            <td align='center'>操作</td>
          </tr>
        </thead>
        <tbody>
        <form action="/index.php/Registration/handle.html"  method="post">
        <?php if(is_array($users)): $i = 0; $__LIST__ = $users;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$user): $mod = ($i % 2 );++$i;?><tr>
          <td align='center'><?php echo ($user["id"]); ?><input type="hidden" value="<?php echo ($user["id"]); ?>" name="id" /></td>
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
          <td align='center'>
              <button class="btn btn_submit mr10 J_ajax_submit_btn" type="submit">已处理</button>
          </td>
          </tr><?php endforeach; endif; else: echo "" ;endif; ?>
        </form>
        <form action="/index.php/Registration/handle_company.html"  method="post">
         <?php if(is_array($companys)): $i = 0; $__LIST__ = $companys;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$user): $mod = ($i % 2 );++$i;?><tr>
          <td align='center'><?php echo ($user["Id"]); ?><input type="hidden" value="<?php echo ($user["Id"]); ?>" name="id" /></td>
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
          <td align='center'>
              <button class="btn btn_submit mr10 J_ajax_submit_btn" type="submit">已处理</button>
          </td>
          </tr><?php endforeach; endif; else: echo "" ;endif; ?>
        </form>
        </tbody>
      </table>
    
  </div>
  </div>
</div>
<script src="<?php echo ($config_siteurl); ?>statics/js/common.js"></script>
</body>
</html>