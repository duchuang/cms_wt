<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
  <Admintemplate file="Common/Nav"/>
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
        <volist name="users" id="user">
          <tr>
          <td align='center'>{$user.id}<input type="hidden" value="{$user.id}" name="id" /></td>
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
          <td align='center'>
              <button class="btn btn_submit mr10 J_ajax_submit_btn" type="submit">已处理</button>
          </td>
          </tr>
        </volist>
        </form>
        <form action="/index.php/Registration/handle_company.html"  method="post">
         <volist name="companys" id="user">
          <tr>
          <td align='center'>{$user.Id}<input type="hidden" value="{$user.Id}" name="id" /></td>
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
          <td align='center'>
              <button class="btn btn_submit mr10 J_ajax_submit_btn" type="submit">已处理</button>
          </td>
          </tr>
        </volist>
        </form>
        </tbody>
      </table>
    
  </div>
  </div>
</div>
<script src="{$config_siteurl}statics/js/common.js"></script>
</body>
</html>