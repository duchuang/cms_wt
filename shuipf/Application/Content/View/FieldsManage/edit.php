<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<admintemplate file="Common/Head" />
<body class="J_scroll_fixed">
    <style>
        .pop_nav {
            padding: 0px;
        }

            .pop_nav ul {
                border-bottom: 1px solid #266AAE;
                padding: 0 5px;
                height: 25px;
                clear: both;
            }

                .pop_nav ul li.current a {
                    border: 1px solid #266AAE;
                    border-bottom: 0 none;
                    color: #333;
                    font-weight: 700;
                    background: #F3F3F3;
                    position: relative;
                    border-radius: 2px;
                    margin-bottom: -1px;
                }
    </style>
    <div class="wrap J_check_wrap">
        <admintemplate file="Common/Nav" />
        <div class="pop_nav">
            <ul class="J_tabs_nav">
                <li class="current"><a href="javascript:;;">基本属性</a></li>
            </ul>
        </div>
        <form class="J_ajaxForms" name="myform" id="myform" action="{:U('FieldsManage/edit',array(id=>$id,isUpdate=>1))}" method="get">
        <div class="J_tabs_contents">
            <div>
                <div class="h_a">基本属性</div>
                <div class="table_full">
                   
                               
                                
                                <table width="100%" class="table_form ">
                                    <volist name="Fields" id="edit">
                                    <tr id="normal_id">
                                        <th>身份证号：</th>
                                        <td><input type="text" name="info[catID]" id="catID" class="input" value="{$edit.userId}"></td>
                                    </tr>
                                    <tr id="normal_add">
                                        <th>用户名：</th>
                                        <td><input type="text" name="info[catname]" id="catname" class="input" value="{$edit.name}"></td>
                                    </tr>
                                    <tr id="catdir_tr">
                                    
                                        <th>考试进度：</th>
                                        <td><input type="text" name="info[catdir]" id="catdir" class="input" value="{$edit.processe}"></td>
                                    
                                    </tr>
                                    </volist>
                                
                </div>

                <table width="100%" class="table_form extend_list"></table>
            </div>
        </div>
    </div>
    <div class="btn_wrap">
        <div class="btn_wrap_pd">
            <button class="btn btn_submit mr10 " type="submit" >修改</button>
        </div>
    </div>
    </form>
    </div>
    <script type="text/javascript" src="{$config_siteurl}statics/js/common.js?v"></script>
    <script type="text/javascript" src="{$config_siteurl}statics/js/content_addtop.js"></script>
    <script type="text/javascript">


            $(function(){
                //添加扩展字段
                $('.add_extend a').click(function(){
                    var fieldname = $('input[name="extend_add[fieldname]"]').val();
                    var type = $('select[name="extend_add[type]"]').val();
                    var setting = {};
                    setting.title = $('input[name="extend_add[setting][title]"]').val();
                    setting.tips = $('input[name="extend_add[setting][tips]"]').val();
                    setting.style = $('input[name="extend_add[setting][style]"]').val();
                    setting.option = $('textarea[name="extend_add[setting][option]"]').val();

                    if(fieldname == ''){
                        alert("键名不能为空！");
                        return false;
                    }else{
                        if(fieldname.replace(/^[0-9a-zA-Z_]{1,}$/g) != 'undefined'){
                            alert("键名只允许数字，字母，下划线！");
                            return false;
                        }
                    }
                    if(type == ''){
                        alert("类型不能为空！");
                        return false;
                    }
                    if(setting.title == ''){
                        alert("名称不能为空！");
                        return false;
                    }

                    //单选框
                    if(type == 'input'){
                        $('.extend_list').append('<tr>\
          <th width="120">'+setting.title+'(<a href="javascript:;;" class="extend_del">删除</a>)</th>\
          <th class="y-bg">\
          <input type="text" class="input" style="'+setting.style+'"  name="extend['+fieldname+']" value="" placeholder="'+setting.tips+'">\
          <input type="hidden" name="extend_config['+fieldname+'][fieldname]" value="'+fieldname+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][type]" value="'+type+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][title]" value="'+setting.title+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][tips]" value="'+setting.tips+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][style]" value="'+setting.style+'"/>\
          <textarea name="extend_config['+fieldname+'][setting][option]" style="display:none;">'+setting.option+'</textarea>\
          </th>\
         </tr>');
                    }else if(type == 'textarea'){
                        //多行文本框
                        $('.extend_list').append('<tr>\
          <th width="120">'+setting.title+'(<a href="javascript:;;" class="extend_del">删除</a>)</th>\
          <th class="y-bg">\
          <textarea name="extend['+fieldname+']" style="'+setting.style+'" placeholder="'+setting.tips+'"></textarea>\
          <input type="hidden" name="extend_config['+fieldname+'][fieldname]" value="'+fieldname+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][type]" value="'+type+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][title]" value="'+setting.title+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][tips]" value="'+setting.tips+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][style]" value="'+setting.style+'"/>\
          <textarea name="extend_config['+fieldname+'][setting][option]" style="display:none;">'+setting.option+'</textarea>\
          </th>\
         </tr>');
                    }else if(type == 'password'){
                        //密码框
                        $('.extend_list').append('<tr>\
          <th width="120">'+setting.title+'(<a href="javascript:;;" class="extend_del">删除</a>)</th>\
          <th class="y-bg">\
          <input type="password" class="input" style="'+setting.style+'"  name="extend['+fieldname+']" value="" placeholder="'+setting.tips+'">\
          <input type="hidden" name="extend_config['+fieldname+'][fieldname]" value="'+fieldname+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][type]" value="'+type+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][title]" value="'+setting.title+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][tips]" value="'+setting.tips+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][style]" value="'+setting.style+'"/>\
          <textarea name="extend_config['+fieldname+'][setting][option]" style="display:none;">'+setting.option+'</textarea>\
          </th>\
         </tr>');
                    }else if(type == 'radio'){
                        //单选框
                        if(setting.option == ''){
                            alert('选项不能为空！');
                            return false;
                        }
                        var html = '';
                        var op = setting.option.split("\n");
                        $.each(op,function(i,rs){
                            var at = rs.split("|");
                            html += '<label><input name="extend['+fieldname+']" value="'+at[1]+'" type="radio" > '+at[0]+'</label>';
                        });
                        $('.extend_list').append('<tr>\
          <th width="120">'+setting.title+'(<a href="javascript:;;" class="extend_del">删除</a>)</th>\
          <th class="y-bg">'+html+'\
          <input type="hidden" name="extend_config['+fieldname+'][fieldname]" value="'+fieldname+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][type]" value="'+type+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][title]" value="'+setting.title+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][tips]" value="'+setting.tips+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][style]" value="'+setting.style+'"/>\
          <textarea name="extend_config['+fieldname+'][setting][option]" style="display:none;">'+setting.option+'</textarea>\
          </th>\
         </tr>');
                    }else if(type == 'checkbox'){
                        //复选框
                        if(setting.option == ''){
                            alert('选项不能为空！');
                            return false;
                        }
                        var html = '';
                        var op = setting.option.split("\n");
                        $.each(op,function(i,rs){
                            var at = rs.split("|");
                            html += '<label><input name="extend['+fieldname+'][]" value="'+at[1]+'" type="checkbox" > '+at[0]+'</label>';
                        });
                        $('.extend_list').append('<tr>\
          <th width="120">'+setting.title+'(<a href="javascript:;;" class="extend_del">删除</a>)</th>\
          <th class="y-bg">'+html+'\
          <input type="hidden" name="extend_config['+fieldname+'][fieldname]" value="'+fieldname+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][type]" value="'+type+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][title]" value="'+setting.title+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][tips]" value="'+setting.tips+'"/>\
          <input type="hidden" name="extend_config['+fieldname+'][setting][style]" value="'+setting.style+'"/>\
          <textarea name="extend_config['+fieldname+'][setting][option]" style="display:none;">'+setting.option+'</textarea>\
          </th>\
         </tr>');
                    }
                    //清空
                    $('input[name="extend_add[fieldname]"]').val('');
                    $('select[name="extend_add[type]"]').val('');
                    $('input[name="extend_add[setting][title]"]').val('');
                    $('input[name="extend_add[setting][tips]"]').val('');
                    $('input[name="extend_add[setting][style]"]').val('');
                    //删除扩展字段
                    $('.extend_list .extend_del').click(function(){
                        $(this).parent('th').parent('tr').remove();
                    });
                });

                $("#child").click(function(){
                    if($(this).attr("checked")){
                        $('#fmmb').hide();
                        $('#plmb').show();
                        $('#lbmb').show();
                    }else{
                        $('#fmmb').show();
                        $('#plmb').hide();
                        $('#lbmb').hide();
                    }
                });
                Wind.use('validate', 'ajaxForm', 'artDialog', function () {
                    var form = $('form.J_ajaxForms');
                    //ie处理placeholder提交问题
                    if ($.browser.msie) {
                        form.find('[placeholder]').each(function () {
                            var input = $(this);
                            if (input.val() == input.attr('placeholder')) {
                                input.val('');
                            }
                        });
                    }
                    //表单验证开始
                    form.validate({
                        //是否在获取焦点时验证
                        onfocusout:false,
                        //是否在敲击键盘时验证
                        onkeyup:false,
                        //当鼠标掉级时验证
                        onclick: false,
                        //验证错误
                        showErrors: function (errorMap, errorArr) {
                            //errorMap {'name':'错误信息'}
                            //errorArr [{'message':'错误信息',element:({})}]
                            try{
                                $(errorArr[0].element).focus();
                                art.dialog({
                                    id:'error',
                                    icon: 'error',
                                    lock: true,
                                    fixed: true,
                                    background:"#CCCCCC",
                                    opacity:0,
                                    content: errorArr[0].message,
                                    cancelVal: '确定',
                                    cancel: function(){
                                        $(errorArr[0].element).focus();
                                    }
                                });
                            }catch(err){
                            }
                        },
                        //验证规则
                        rules: {
                            "info[modelid]":{
                                required:true
                            },
                            "info[catname]":{
                                required:true
                            },
                            "info[catdir]":{
                                required:true
                            }
                        },
                        //验证未通过提示消息
                        messages: {
                            "info[modelid]":{
                                required:"内容不能为空！"
                            },
                            "info[catname]":{
                                required:"内容不能为空！"
                            }

                        },
                        //给未通过验证的元素加效果,闪烁等
                        highlight: false,
                        //是否在获取焦点时验证
                        onfocusout: false,
                        //验证通过，提交表单
                        submitHandler: function (forms) {
                            $(forms).ajaxSubmit({
                                url: form.attr('action'), //按钮上是否自定义提交地址(多按钮情况)
                                dataType: 'json',
                                beforeSubmit: function (arr, $form, options) {

                                },
                                success: function (data, statusText, xhr, $form) {
                                    if(data.status){
                                        //添加成功
                                        Wind.use("artDialog", function () {
                                            art.dialog({
                                                id: "succeed",
                                                icon: "succeed",
                                                fixed: true,
                                                lock: true,
                                                background: "#CCCCCC",
                                                opacity: 0,
                                                content: data.info,
                                                button:[
                                                    {
                                                        name: '继续修改？',
                                                        callback:function(){
                                                            reloadPage(window);
                                                            return true;
                                                        },
                                                        focus: true
                                                    },{
                                                        name: '返回栏目管理页',
                                                        callback:function(){
                                                            window.location.href = "{:U('FieldsManage/index')}";
                                                            return true;
                                                        }
                                                    }
                                                ]
                                            });
                                        });
                                    }else{
                                        isalert(data.info);
                                    }
                                }
                            });
                        }
                    });
                });
            });
    </script>
</body>
</html>