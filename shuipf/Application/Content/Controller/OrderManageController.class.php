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

class OrderManageController extends AdminBase {

	public function index()
    {
        $data = M('ordermanage')->select();
        $this->assign("ordermanage",$data);
        $this->assign("student",$data);
        $this->display();
    }
}
?>