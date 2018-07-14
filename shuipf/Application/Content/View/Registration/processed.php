<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body class="J_scroll_fixed">
<Admintemplate file="Common/Nav"/>
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
        <volist name="users" id="user">
          <tr>
          <td align='center'>{$user.id}</td>
          <td align='center'>个人</td>
          <td align='center'></td>
          <td align='center'>{$user.name}</td>
          <td align='center'>{$user.phone}</td>
          <td align='center'>{$user.QQ}</td>
          <td align='center'>{$user.sex}</td>
          <td align='center'>{$user.type}</td>
          <td align='center'>{$user.papers}</td>
          <td align='center'>{$user.papersId}</td>
          <td align='center'>{$user.isLocal}</td>
          <td align='center'>{$user.isStack}</td>
          <td align='center'>{$user.message}</td>
          </tr>
        </volist>
        <volist name="companys" id="user">
          <tr>
          <td align='center'>{$user.Id}</td>
          <td align='center'>团体</td>
          <td align='center'>{$user.company}</td>
          <td align='center'>{$user.name}</td>
          <td align='center'>{$user.phone}</td>
          <td align='center'>{$user.QQ}</td>
          <td align='center'>{$user.sex}</td>
          <td align='center'></td>
          <td align='center'></td>
          <td align='center'></td>
          <td align='center'></td>
          <td align='center'></td>
          <td align='center'>{$user.content}</td>
          </tr>
        </volist>
        </tbody>
      </table>
  </div>
  </div>
</div>
<script src="{$config_siteurl}statics/js/common.js"></script>
</body>
</html>