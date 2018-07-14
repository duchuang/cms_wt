<?php

// +----------------------------------------------------------------------
// | ShuipFCMS 留言管理
// +----------------------------------------------------------------------
// | Copyright (c) 2012-2020 http://www.liguifa.wang, All rights reserved.
// +----------------------------------------------------------------------
// | Author: 李贵发 
// +----------------------------------------------------------------------

namespace Content\Controller;

use Common\Controller\AdminBase;
use Content\Model\ContentModel;
use Content\Model;

class MessageController extends AdminBase {

	public function processe()
	{
		$messages=M("message_data")->where(array("isHandle"=>0))->select();
		$this->assign("messages",$messages);
		$this->display();
	}

	public function processed()
	{
		$messages=M("message_data")->where(array("isHandle"=>1))->select();
		$this->assign("messages",$messages);
		$this->display();
	}

	public function reply()
	{
		$id=I("id");
		$message=M("message_data")->where(array("id"=>$id))->find();
		$this->assign("message",$message);
		$this->display();
	}

	public function replyIn()
	{
		$content=I("content");
		$id=I("id");
		$data=M("message_data")->where(array("id"=>$id))->setField(array("reply"=>$content,"isHandle"=>1));
		if($data)
		{
			$this->success("回复成功！");
		}
		else
		{
			$this->error("回复失败！未知错误");
		}
	}
}