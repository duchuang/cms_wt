<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
  <Admintemplate file="Common/Nav"/>
  <a href="javascript:void(0)" onClick="javascript:openwinx('{:U("CompanyMsg/add",array("catid"=>$catid))}','')" class="btn" title="添加内容"><span class="add"></span>添加内容</a>

  <div class="h_a">温馨提示</div>
  <div class="prompt_text">
    <p>1、请及时与客户取得联系，下面的联系方式包含手机和QQ</p>
    <p>2、处理之后可点击处理按钮，防止重复联系，处理后的客户会出现在已处理栏</p>
  </div>
  <form name="myform" action="{:U("CompanyMsg/index")}" method="post" class="J_ajaxForm">
  <div class="table_list">
    <table width="100%">
        <colgroup>
        <col width="38">
        <col width="55">
        <col>
        <col width="80">
        <col width="100">
        <col width="50" >
        <col width="100">
        <col width="300">
        </colgroup>
        <thead>
          <tr>
            <td align='center'>序号</td>
            <td align='center'>属性名</td>
            <td align='center'>属性值</td>
            <td align='center'>管理操作</td>
          </tr>
        </thead>
        <tbody>
        <volist name="companymsg" id="msg">
          <tr>
          <td align='center'>{$msg.id}</td>
          <td align='center'>{$msg.name}</td>
          <td align='center'>{$msg.value}</td>
          <td align='center'>
           <?php
      $op = array();
      $op[] = '<a href="javascript:;;" onClick="javascript:openwinx(\''.U("CompanyMsg/edit",array("id"=>$msg['id'])).'\',\'\')">修改</a>';
      if(isModuleInstall('Comments')){
        $op[] = '<a href="'.U('Comments/Comments/index',array('searchtype'=>2,'keyword'=>'c-'.$vo['catid'].'-'.$vo['id'].'')).'" target="_blank">评论</a>';
      }
      echo implode(' | ',$op);
      ?></td>
          </tr>
          
        </volist>
        </tbody>
      </table>
  </div>
  </div>
</form>
</div>
<script src="{$config_siteurl}statics/js/common.js"></script>
</body>
</html>