<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
  <Admintemplate file="Common/Nav"/>
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
        <volist name="messages" id="message">
          <tr>
          <td align='center'>{$message.id}<input type="hidden" value="{$message.id}" name="id" /></td>
          <td align='center'>{$message.name}</td>
          <td align='center'>{$message.phone}</td>
          <td align='center'>{$message.infotitle}</td>
          <td align='center'>{$message.type}</td>
          <td align='center'>{$message.body}</td>
          <td align='center'>
              {$message.reply}
          </td>
          </tr>
        </volist>
        </tbody>
      </table>
    </form>
  </div>
  </div>
</div>
<script src="{$config_siteurl}statics/js/common.js"></script>
</body>
</html>