<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
  <Admintemplate file="Common/Nav"/>
  <a href="javascript:void(0)" onClick="javascript:openwinx('{:U("StudentManage/add",array("catid"=>$catid))}','')" class="btn" title="添加内容"><span class="add"></span>添加学员</a>

  <div class="h_a">温馨提示</div>
  <div class="prompt_text">
    <p>1、请添加以交报名费学员信息</p>
    <p>2、请及时与客户取得联系，下面的联系方式包含手机和QQ</p>
    <p>3、处理之后可点击处理按钮，防止重复联系，处理后的客户会出现在已处理栏</p>
  </div>
  <form name="myform" action="{:U("StudentManage/index")}" method="post" class="J_ajaxForm">
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
        <volist name="studentmanage" id="msg">
          <tr>
          <td align='center'>{$msg.Id}</td>
          <td align='center'>{$msg.paperId}</td>
          <td align='center'>{$msg.name}</td>
          <td align='center'>{$msg.phone}</td>
          
      <td align="center">
            <?php
      $op = array();
      $op[] = '<a href="javascript:;;" onClick="javascript:openwinx(\''.U("StudentManage/edit",array("id"=>$msg['Id'])).'\',\'\')">修改</a>';
      $op[] = '<a href="'.U("StudentManage/delete",array("id"=>$msg['Id'])).'" class="J_ajax_del" >删除</a>';
      if(isModuleInstall('Comments')){
        $op[] = '<a href="'.U('Comments/Comments/index',array('searchtype'=>2,'keyword'=>'c-'.$vo['catid'].'-'.$vo['id'].'')).'" target="_blank">评论</a>';
      }
      echo implode(' | ',$op);
      ?>
            </td>

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