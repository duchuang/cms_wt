<?php

// +----------------------------------------------------------------------
// | ShuipFCMS 报名管理
// +----------------------------------------------------------------------
// | Copyright (c) 2012-2020 http://www.liguifa.wang, All rights reserved.
// +----------------------------------------------------------------------
// | Author: 李贵发 
// +----------------------------------------------------------------------

namespace Content\Controller;

use Common\Controller\AdminBase;
use Content\Model\ContentModel;

class RegistrationController extends AdminBase {

	/*
	未处理列表
	*/
	public function processe()
	{
		//个人报名数据
		$data = M('users')->where(array("isHandle"=>0))->select();
		for($i=0;$i<count($data);$i++) {
			$data[$i]["isLocal"]=$data[$i]["isLocal"]=="1"?"是":"否";
			$data[$i]["isStack"]=$data[$i]["isStack"]=="1"?"是":"否";
			$data[$i]["type"]=M("shuttles")->where(array("id"=>$data[$i]["type"]))->find()["title"];
		}
		$this->assign("users",$data);
		//团体报名数据
		$data=M("companyusers")->where(array("isHandle"=>0))->select();
		$this->assign("companys",$data);
		$this->display();
	}

	/*
	已处理列表
	*/
	public function processed()
	{
		$data = M('users')->where(array("isHandle"=>1))->select();
		for($i=0;$i<count($data);$i++) {
			$data[$i]["isLocal"]=$data[$i]["isLocal"]=="1"?"是":"否";
			$data[$i]["isStack"]=$data[$i]["isStack"]=="1"?"是":"否";
			$data[$i]["type"]=M("shuttles")->where(array("id"=>$data[$i]["type"]))->find()["title"];
		}
		$this->assign("users",$data);
		//团体报名数据
		$data=M("companyusers")->where(array("isHandle"=>1))->select();
		$this->assign("companys",$data);
		$this->display();
	}

	/*
	报名处理
	*/
	public function handle()
	{
		$id=I("id");
		M("users")->where(array("id"=>$id))->setField("isHandle",1);
		$this->success();
	}

	/*
	团体报名处理
	*/
	public function handle_company()
	{
		$id=I("id");
		M("companyusers")->where(array("Id"=>$id))->setField("isHandle",1);
		$this->success();
	}
}
?>