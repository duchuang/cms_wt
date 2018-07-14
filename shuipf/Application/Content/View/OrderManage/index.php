<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
  <Admintemplate file="Common/Nav"/>

  <div class="h_a">温馨提示</div>
  <div class="prompt_text">
    <p>1、请添加以交报名费学员信息</p>
    <p>2、请及时与客户取得联系，下面的联系方式包含手机和QQ</p>
    <p>3、处理之后可点击处理按钮，防止重复联系，处理后的客户会出现在已处理栏</p>
  </div>
  <form name="myform" action="{:U("OrderManage/index")}" method="post" class="J_ajaxForm">
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
        <volist name="ordermanage" id="msg">
          <tr>
          <td align='center'>{$msg.Id}</td>
          <td align='center'>{$msg.coachename}</td>
          <td align='center'>{$msg.number}</td>
          <td align='center'>{$msg.date}</td>
          <td align='center'>{$msg.time}</td>
          <td align='center'>{$msg.studentId}</td>
          
      <td align="center">
            <?php
      $op = array();
      $op[] = '<a href="javascript:;;" onClick="javascript:openwinx(\''.U("OrderManage/edit",array("id"=>$msg['Id'])).'\',\'\')">修改</a>';
      $op[] = '<a href="'.U("OrderManage/delete",array("id"=>$msg['Id'])).'" class="J_ajax_del" >删除</a>';
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