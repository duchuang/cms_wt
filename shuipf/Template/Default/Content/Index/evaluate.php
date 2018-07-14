<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>大连万通驾校 | 教练点评</title>
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <meta name="description" content="{$SEO['description']}" />
    <meta name="keywords" content="{$SEO['keyword']}" />
    <script src="{$config_siteurl}statics/default/js/jquery1.42.min.js" type="text/javascript"></script>
    <script src="{$config_siteurl}statics/layer/layer.js" type="text/javascript"></script>  
    <link href="{$config_siteurl}statics/default/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="{$config_siteurl}statics/default/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="{$config_siteurl}statics/default/css/codes.css" />
    <script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp&key=F3LBZ-BU4WD-DDB45-PNTON-6MULE-GRBVQ"></script>
    <!--[if lt IE 9]>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <![endif]-->
    <script>
    $(document).ready(function(){
      $(".sub").click(function(){
        var cid=$(this).siblings("input[name=cid]").val();
       var column=$(this).siblings("input[name=evaluate"+cid+"]:checked").val();
        $.ajax({
          type:"post",
          url:"/index.php/Index/evaluateIn.html",
          data:{
            column:column,
            cid:cid
          },
          success:function(data)
          {
            $(".layui-layer").remove();
              data=JSON.parse(data);
              setTimeout("$('.layui-layer').remove();",2000);
              if(data.res=="1")
              {
                var id="#"+column+cid;
                var value=$(id).text();
                value=value.split("(")[0]+"("+data.num+")";
               $(id).text(value);
                layer.msg('提交成功！感谢参与', function(){
                  });

              }
              else
              {
                layer.msg('抱歉，服务器错误，提交失败！', function(){
                  });
              }
              
          }
        });
         layer.msg('提交中', {icon: 16});
      });
    })
    </script>
</head>
<body>
   <template file="content/header.php"/>

        <div id="main">
            <div class="member">
  <template file="content/sider.php" />
 <div class="you">
      <h4>教练点评</h4>
      <ul>
      <volist name="caochs" id="caoch">
        <li>
            <div class="bxlist">
                    <div class="one">
                            <a title="{$caoch.caoch_name}"><img src="{$caoch.thumb}" alt="{$caoch.caoch_name}"></a></div>
                      <div class="two">
                        <dl>
                            <dt><a  title="{$caoch.caoch_name}">姓名：{$caoch.caoch_name}</a></dt>
                            <dd>
                                <br />电话：{$caoch.phone}
                                <br />Q&nbsp;Q：{$caoch.caoch_qq}
                                <br />个人简介：{$caoch.caoch_msg}
                                <br />教练评价：
                                <input type="radio" id="evaluate{$caoch.id}1" name="evaluate{$caoch.id}" value="very" /><label id="very{$caoch.id}" for="evaluate{$caoch.id}1">非常好({$caoch.very})</label>
                                <input type="radio" id="evaluate{$caoch.id}2" name="evaluate{$caoch.id}" value="good" /><label id="good{$caoch.id}" for="evaluate{$caoch.id}2">好({$caoch.good})</label>
                                <input type="radio" id="evaluate{$caoch.id}3" name="evaluate{$caoch.id}" value="general" checked="true" /><label id="general{$caoch.id}" for="evaluate{$caoch.id}3">一般({$caoch.general})</label>
                                <input type="radio" id="evaluate{$caoch.id}4" name="evaluate{$caoch.id}" value="poor" /><label id="poor{$caoch.id}" for="evaluate{$caoch.id}4">差({$caoch.poor})</label>
                                <input type="radio" id="evaluate{$caoch.id}5" name="evaluate{$caoch.id}" value="very_poor" /><label id="very_poor{$caoch.id}" for="evaluate{$caoch.id}5">非常差({$caoch.very_poor})</label>
                                <input type="hidden" name="cid" id="cid" value="{$caoch.id}" />
                                <button type="button" class="sub" value="提交评价">提交评价</button>
                            </dd>
                        </dl>
                    </div>
                </div>
        </li>
        </volist>
      </ul>
      <div class="sabrosus">
      
    </div>
  </div>
        </div>
         <template file="content/footer.php"/>
</body>
</html>
<script>
      var page={$Think.get.page};
      var count={$count};
      var html="";
      if(page==1)
      {
        html+="<span class='disabled'>&lt;</span>";
      }
      else
      {
            html+="<a href='../page/"+(page-1)+".html' >&lt;</span>";
      }

      for(var i=1;i<=count;i++)
      {
        if(i==page)
        {
            html+="<span class='current'>"+i+"</span>";
        }
        else
        {
            html+="<a href='../page/"+i+".html'>"+i+"</a>";
        }
      }

      if(page==count)
      {
        html+="<span class='disabled'>&gt;</span>";
      }
      else
      {
        html+="<a href='../page/"+(page+1)+".html' >&gt;</span>";
      }
      $(".sabrosus").append(html);
</script>