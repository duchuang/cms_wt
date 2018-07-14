<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><if condition=" isset($SEO['title']) && !empty($SEO['title']) ">{$SEO['title']}</if>{$SEO['site_title']}</title>
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <meta name="description" content="{$SEO['description']}" />
    <meta name="keywords" content="{$SEO['keyword']}" />
    <script src="{$config_siteurl}statics/default/js/jquery1.42.min.js" type="text/javascript"></script>
    <script src="{$config_siteurl}statics/default/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
    <link href="{$config_siteurl}statics/default/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="{$config_siteurl}statics/default/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="{$config_siteurl}statics/default/css/codes.css" />
    <script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp&key=F3LBZ-BU4WD-DDB45-PNTON-6MULE-GRBVQ"></script>
    <!--[if lt IE 9]>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <![endif]-->
</head>
<body>
   <template file="content/header.php"/>

        <div id="main">
            <div class="member">
  <template file="content/sider.php" />
 <div class="you">
      <h4>教练信息</h4>
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