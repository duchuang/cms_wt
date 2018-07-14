$(document).ready(function(){
	$.ajax({
		type:"post",
		url:"/index.php/Index/getCustomer.html",
		data:{
			temp:1
		},
		success:function(data)
		{
			data=JSON.parse(data);
			var open='<div id="qqad" class="sys-qq-box" ><div align="right" style="position:absolute;width:13px;height:13px;top:7px;right:8px;z-index:21;cursor:pointer;overflow:hidden;" class="closeFloat"></div><div><h2 id="text_h2">在线客服</h2><ul>';
			for(var i in data)
			{
				if(data[i].value+""!="undefined")
				open+='<li class="showname"><a href="tencent://message/?uin='+data[i].value+'&amp;Site=&amp;Menu=yes"><img class="sys-layer-im-icon" src="/statics/default/images/qq.gif" alt="客服（'+(parseInt(i)+1)+'）">&nbsp;客服（'+(parseInt(i)+1)+'）</a></li>';
			}
			open+='</ul><div class="sys-qq-foot"></div></div></div>'
			var close='<div id="close"></div>';
			$("body").append(open);
			$("body").append(close);
			$(".closeFloat").ready(function(){
		$(".closeFloat").click(function()
			{
				$("#qqad").css("display","none");
				$("#close").css("display","block");
			});

	$("#close").click(function()
	{
		$("#close").css("display","none");
		$("#qqad").css("display","block");
	});
});
		}
	});
});
