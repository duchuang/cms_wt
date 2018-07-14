<?php

// +----------------------------------------------------------------------
// | ShuipFCMS 档案管理
// +----------------------------------------------------------------------
// | Copyright (c) 2012-2014 http://www.shuipfcms.com, All rights reserved.
// +----------------------------------------------------------------------
// | Author: 杜闯
// +----------------------------------------------------------------------

namespace Content\Controller;

use Common\Controller\AdminBase;
use Content\Model\ContentModel;
use Libs\System\Url;

class FieldsManageController extends AdminBase {

	public function index()
    {
        $data = M('fields')->select();
        $this->assign("fieldsmanage",$data);
        $this->display();
    }
	//添加信息
    public function add() 
    {
        if(isset($_POST['info']['catdir']))
        {
        	$msgInfo=array(
                "userId"=>$_POST['info']['catID'],
                "name"=>$_POST['info']['catname'],
                "processe"=>$_POST['info']['catdir']
                );
    		$data = M('Fields')->add($msgInfo);
    		if($data)
    		{
    			$this->success("添加成功！", U("FieldsManage/index"));
    		}
    	    else
    	    {
    		    $this->error("添加失败！",  U("FieldsManage/add"));
    	    }
        }
        else
        {
            $this->display();
        }
    }

    //修改信息 
    public function edit() 
    {
    	$hid = I("id");
    	$isUpdate=I("isUpdate");
		if($isUpdate)
		{
	    	$msgInfo=array(
                "userId" => $_GET['info']['catID'],
	            "name"=>$_GET['info']['catname'],
	            "processe"=>$_GET['info']['catdir']
	            );
			$data = M('Fields')->where(array("Id"=> $hid))->setField($msgInfo);
	    	if($data)
	    	{
	    		$this->success("修改成功！", U("FieldsManage/index"));
	    	}
	    	else
	    	{
	    		$this->error();
	    	}
    	}
    	else
    	{
			$data = M('Fields')->where(array("Id"=> $hid))->select();
			$this->assign("Fields",$data);
			$this->assign("id",$hid);
        	$this->display();
    	}
    }

    //删除信息 
    public function delete() 
    {
        $hid = I("id");
      
      
            $data = M('Fields')->where(array("Id"=> $hid))->delete();
            
            if ($data) 
            {
                $this->success('删除成功！');
            } 
            else 
            {
                $this->error('删除失败！');
            }
            $this->display();
        
    }
}
?>