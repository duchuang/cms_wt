   <div class="container">
        <div id="header">
            <div class="w1000">
                <div class="logo"><img src="{$config_siteurl}statics/default/images/logo.png" alt="大连万通logo" /></div>
                <div class="menu">
                    <ul>
					<volist name="menus" id="menu">
                        <li><a href="{$menu.url_cust}" target="_blank" >{$menu.title}<span class="en_title">{$menu.en_title}</span><span class="arrow"><img src="{$config_siteurl}statics/default/images/arrow.png" /></span></a></li>
                    </volist>
					</ul>
                </div>
                <div class="cb"></div>
            </div>
        </div>
<script src="{$config_siteurl}statics/default/js/Customer.js" type="text/javascript"></script>

 <script src="{$config_siteurl}statics/layer/layer.js" type="text/javascript"></script>


    <link href="{$config_siteurl}statics/default/css/Customer.css" rel="stylesheet" type="text/css" />
    <script>
    function Contact()
    {
        setTimeout("setClose()",1000);
        layer.alert('电话：{$info[1].value}<br />手机：{$info[2].value}<br />邮箱：{$info[3].value}<br />地址：{$info[4].value}', {
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