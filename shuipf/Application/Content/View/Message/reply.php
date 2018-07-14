<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>回复客户</title>
    <link href="/statics/css/admin_style.css" rel="stylesheet">
    <link href="/statics/js/artDialog/skins/default.css" rel="stylesheet">
    <style type="text/css">
        .col-auto {
            overflow: hidden;
            _zoom: 1;
            _float: left;
            border: 1px solid #c2d1d8;
        }

        .col-right {
            float: right;
            width: 210px;
            overflow: hidden;
            margin-left: 6px;
            border: 1px solid #c2d1d8;
        }

        body fieldset {
            border: 1px solid #D8D8D8;
            padding: 10px;
            background-color: #FFF;
        }

            body fieldset legend {
                background-color: #F9F9F9;
                border: 1px solid #D8D8D8;
                font-weight: 700;
                padding: 3px 8px;
            }

        .list-dot {
            padding-bottom: 10px;
        }

            .list-dot li, .list-dot-othors li {
                padding: 5px 0;
                border-bottom: 1px dotted #c6dde0;
                font-family: "宋体";
                color: #bbb;
                position: relative;
                _height: 22px;
            }

                .list-dot li span, .list-dot-othors li span {
                    color: #004499;
                }

                .list-dot li a.close span, .list-dot-othors li a.close span {
                    display: none;
                }

                .list-dot li a.close, .list-dot-othors li a.close {
                    background: url("/statics/images/cross.png") no-repeat left 3px;
                    display: block;
                    width: 16px;
                    height: 16px;
                    position: absolute;
                    outline: none;
                    right: 5px;
                    bottom: 5px;
                }

                    .list-dot li a.close:hover, .list-dot-othors li a.close:hover {
                        background-position: left -46px;
                    }

        .list-dot-othors li {
            float: left;
            width: 24%;
            overflow: hidden;
        }
    </style>
    <link href="http://localhost:5555/statics/js/ueditor/themes/default/css/ueditor.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="/statics/js/colorPicker/style.css?v=">
    <link rel="stylesheet" href="/statics/js/datePicker/style.css?v=">
    <link rel="stylesheet" type="text/css" href="http://localhost:5555/statics/js/ueditor/third-party/codemirror/codemirror.css">
</head>
<body class="J_scroll_fixed">
    <div class="wrap J_check_wrap">
        <form name="myform" id="myform" action="/index.php/Message/replyIn.html" method="post">
            <div class="col-auto">
                <div class="h_a">回复</div>
                <div class="table_full">
                    <table width="100%">
                        <tbody>
                            <tr>
                                <th width="80">
                                    姓名
                                </th>
                                <td><input type="text" name="info[en_title]" id="en_title" style="width:150px;height:28px"  disabled="disabled " value="{$message.name}"  class="input"> <span></span></td>
                            </tr>
                            <tr>
                                <th width="80">
                                    联系方式
                                </th>
                                <td><input type="text" name="info[url_cust]" id="url_cust" style="width:150px;height:28px"  disabled="disabled" value="{$message.phone}"  class="input"> <span></span></td>
                            </tr>
                            <tr>
                                <th width="80">
                                    反馈类型
                                </th>
                                <td><input type="text" name="info[url_cust]" id="url_cust" style="width:150px;height:28px"  disabled="disabled" value="{$message.type}"  class="input"> <span></span></td>
                            </tr>
                            <tr>
                                <th width="80">
                                    留言标题
                                </th>
                                <td><input type="text" name="info[url_cust]" id="url_cust" style="width:550px;height:28px"  disabled="disabled" value="{$message.infotitle}" class="input"> <span></span></td>
                            </tr>
                            <tr>
                                <th width="80">
                                    留言内容
                                </th>
                                <td><textarea type="text" name="info[url_cust]" id="url_cust" style="width:550px;height:120px"  disabled="disabled"  class="input">{$message.body}</textarea> <span></span></td>
                            </tr>
                             <tr>
                                <th width="80">
                                    回复内容
                                </th>
                                <td><textarea type="text" name="content" id="url_cust" style="width:550px;height:120px"  class="input"></textarea> <input type="hidden" value="{$message.id}" name="id" /> <span></span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="btn_wrap" style="z-index:999;text-align: center;">
                <div class="btn_wrap_pd">
                    <button class="btn btn_submit" type="submit">提交</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>