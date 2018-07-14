<?php

// +----------------------------------------------------------------------
// | ShuipFCMS 信息管理
// +----------------------------------------------------------------------
// | Copyright (c) 2012-2014 http://www.shuipfcms.com, All rights reserved.
// +----------------------------------------------------------------------
// | Author: 杜闯
// +----------------------------------------------------------------------

namespace Content\Controller;

use Common\Controller\AdminBase;
use Content\Model\ContentModel;
use Libs\System\Url;

class CompanyMsgController extends AdminBase {

	public function index()
	{
		$data = M('companymsg')->select();
		$this->assign("companymsg",$data);
		$this->display();
	}

	//添加信息
    public function add() 
    {
        if(isset($_POST['info']['catdir']))
        {
            $msgInfo=array(
            "name"=>$_POST['info']['catname'],
            "value"=>$_POST['info']['catdir']
            );
        
            $data = M('companymsg')->add($msgInfo);
            if($data)
            {
                $this->success("添加成功！", U("CompanyMsg/index"));
            }
            else
            {
                $this->error("添加失败！",  U("CompanyMsg/add"));
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
	            "name"=>$_GET['info']['catname'],
	            "value"=>$_GET['info']['catdir']
	            );
			$data = M('companymsg')->where(array("id"=> $hid))->setField($msgInfo);
	    	if($data)
	    	{
	    		$this->success("修改成功！", U("CompanyMsg/index"));
	    	}
	    	else
	    	{
	    		$this->error();
	    	}
    	}
    	else
    	{
			$data = M('companymsg')->where(array("id"=> $hid))->select();
			$this->assign("companymsg",$data);
			$this->assign("id",$hid);
        	$this->display();
    	}
    }
}
?>