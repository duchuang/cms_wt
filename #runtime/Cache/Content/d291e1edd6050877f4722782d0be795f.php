<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>大连万通驾校 | 教练点评</title>
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <meta name="description" content="<?php echo ($SEO['description']); ?>" />
    <meta name="keywords" content="<?php echo ($SEO['keyword']); ?>" />
    <script src="<?php echo ($config_siteurl); ?>statics/default/js/jquery1.42.min.js" type="text/javascript"></script>
    <script src="<?php echo ($config_siteurl); ?>statics/layer/layer.js" type="text/javascript"></script>  
    <link href="<?php echo ($config_siteurl); ?>statics/default/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo ($config_siteurl); ?>statics/default/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="<?php echo ($config_siteurl); ?>statics/default/css/codes.css" />
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
      <div class="container">
        <div id="header">
            <div class="w1000">
                <div class="logo"><img src="<?php echo ($config_siteurl); ?>statics/default/images/logo.png" alt="大连万通logo" /></div>
                <div class="menu">
                    <ul>
					<?php if(is_array($menus)): $i = 0; $__LIST__ = $menus;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$menu): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($menu["url_cust"]); ?>" target="_blank" ><?php echo ($menu["title"]); ?><span class="en_title"><?php echo ($menu["en_title"]); ?></span><span class="arrow"><img src="<?php echo ($config_siteurl); ?>statics/default/images/arrow.png" /></span></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
					</ul>
                </div>
                <div class="cb"></div>
            </div>
        </div>
<script src="<?php echo ($config_siteurl); ?>statics/default/js/Customer.js" type="text/javascript"></script>

 <script src="<?php echo ($config_siteurl); ?>statics/layer/layer.js" type="text/javascript"></script>


    <link href="<?php echo ($config_siteurl); ?>statics/default/css/Customer.css" rel="stylesheet" type="text/css" />
    <script>
    function Contact()
    {
        setTimeout("setClose()",1000);
        layer.alert('电话：<?php echo ($info[1]["value"]); ?><br />手机：<?php echo ($info[2]["value"]); ?><br />邮箱：<?php echo ($info[3]["value"]); ?><br />地址：<?php echo ($info[4]["value"]); ?>', {
        skin: 'layui-layer-lan',
        shift: 1 //动画类型
        });
    }

    function setClose()
    {
        $(".layui-layer-btn0").click(function(){
            $(".layui-layer-shade").remove();
            $(".layui-layer").remove();
        });
        $(".layui-layer-ico").click(function(){
                $(".layui-layer-shade").remove();
            $(".layui-layer").remove();
        });
    }
    
    </script>

        <div id="main">
            <div class="member">
    <div class="zuo">
    <div class="erji_content_L">
        <ul class="fl">
        <?php if(is_array($side_menus)): $i = 0; $__LIST__ = $side_menus;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$menu): $mod = ($i % 2 );++$i;?><li>
            <a href="<?php echo ($menu["url_cust"]); ?>" target="_blank"><?php echo ($menu["title"]); ?></a>
          </li><?php endforeach; endif; else: echo "" ;endif; ?>
          </ul>
          <div class="lxwm_1">
          <img src="<?php echo ($config_siteurl); ?>statics/default/images/hyzx.jpg">
          <p>24H报名电话：<?php echo ($info[2]["value"]); ?> <?php echo ($info[0]["value"]); ?></p>
          <p>报名地址：<?php echo ($info[4]["value"]); ?></p></div></div>
  </div>
 <div class="you">
      <h4>教练点评</h4>
      <ul>
      <?php if(is_array($caochs)): $i = 0; $__LIST__ = $caochs;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$caoch): $mod = ($i % 2 );++$i;?><li>
            <div class="bxlist">
                    <div class="one">
                            <a title="<?php echo ($caoch["caoch_name"]); ?>"><img src="<?php echo ($caoch["thumb"]); ?>" alt="<?php echo ($caoch["caoch_name"]); ?>"></a></div>
                      <div class="two">
                        <dl>
                            <dt><a  title="<?php echo ($caoch["caoch_name"]); ?>">姓名：<?php echo ($caoch["caoch_name"]); ?></a></dt>
                            <dd>
                                <br />电话：<?php echo ($caoch["phone"]); ?>
                                <br />Q&nbsp;Q：<?php echo ($caoch["caoch_qq"]); ?>
                                <br />个人简介：<?php echo ($caoch["caoch_msg"]); ?>
                                <br />教练评价：
                                <input type="radio" id="evaluate<?php echo ($caoch["id"]); ?>1" name="evaluate<?php echo ($caoch["id"]); ?>" value="very" /><label id="very<?php echo ($caoch["id"]); ?>" for="evaluate<?php echo ($caoch["id"]); ?>1">非常好(<?php echo ($caoch["very"]); ?>)</label>
                                <input type="radio" id="evaluate<?php echo ($caoch["id"]); ?>2" name="evaluate<?php echo ($caoch["id"]); ?>" value="good" /><label id="good<?php echo ($caoch["id"]); ?>" for="evaluate<?php echo ($caoch["id"]); ?>2">好(<?php echo ($caoch["good"]); ?>)</label>
                                <input type="radio" id="evaluate<?php echo ($caoch["id"]); ?>3" name="evaluate<?php echo ($caoch["id"]); ?>" value="general" checked="true" /><label id="general<?php echo ($caoch["id"]); ?>" for="evaluate<?php echo ($caoch["id"]); ?>3">一般(<?php echo ($caoch["general"]); ?>)</label>
                                <input type="radio" id="evaluate<?php echo ($caoch["id"]); ?>4" name="evaluate<?php echo ($caoch["id"]); ?>" value="poor" /><label id="poor<?php echo ($caoch["id"]); ?>" for="evaluate<?php echo ($caoch["id"]); ?>4">差(<?php echo ($caoch["poor"]); ?>)</label>
                                <input type="radio" id="evaluate<?php echo ($caoch["id"]); ?>5" name="evaluate<?php echo ($caoch["id"]); ?>" value="very_poor" /><label id="very_poor<?php echo ($caoch["id"]); ?>" for="evaluate<?php echo ($caoch["id"]); ?>5">非常差(<?php echo ($caoch["very_poor"]); ?>)</label>
                                <input type="hidden" name="cid" id="cid" value="<?php echo ($caoch["id"]); ?>" />
                                <button type="button" class="sub" value="提交评价">提交评价</button>
                            </dd>
                        </dl>
                    </div>
                </div>
        </li><?php endforeach; endif; else: echo "" ;endif; ?>
      </ul>
      <div class="sabrosus">
      
    </div>
  </div>
        </div>
                 <div class="clear"></div>
        <div class="banner001">
            <div class="bannerwz"><?php echo ($info[7]["value"]); ?></div>
        </div>
        <div id="footer">
            <p><?php echo ($info[6]["value"]); ?>  版权所有     地址：<?php echo ($info[4]["value"]); ?>     手机：<?php echo ($info[2]["value"]); ?> <?php echo ($info[0]["value"]); ?></p>
            <p><?php echo ($info[6]["value"]); ?> 祝所有学员顺利通过考试</p>
        </div>
</body>
</html>
<script>
      var page=<?php echo ($_GET['page']); ?>;
      var count=<?php echo ($count); ?>;
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