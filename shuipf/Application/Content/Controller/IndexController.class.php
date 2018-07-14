<?php

// +----------------------------------------------------------------------
// | ShuipFCMS 网站前台
// +----------------------------------------------------------------------
// | Copyright (c) 2012-2014 http://www.shuipfcms.com, All rights reserved.
// +----------------------------------------------------------------------
// | Author: 水平凡 <admin@abc3210.com>
// +----------------------------------------------------------------------

namespace Content\Controller;

use Common\Controller\Base;
use Content\Model\ContentModel;
use Content\Model;

class IndexController extends Base {

    /*
    显示首页
    */
    public function index() 
    {
        $SEO = seo('', '', self::$Cache['Config']['siteinfo'], self::$Cache['Config']['sitekeywords']);
        //seo分配到模板
        $this->assign("SEO", $SEO);
        //显示班型信息
        $data = ContentModel::getInstance(1)->relationJoin("wt_shuttles_data",array("wt_shuttles_data.id","wt_shuttles.id"))->limit(4)->where(array("auto_car"=>1))->select();
		$this->assign("shto",$data);
        $data = ContentModel::getInstance(1)->relationJoin("wt_shuttles_data",array("wt_shuttles_data.id","wt_shuttles.id"))->limit(4)->where(array("auto_car"=>2))->select();
        $this->assign("auto",$data);
        //显示教练信息
        $data = ContentModel::getInstance(4)->relationJoin("wt_caochs_data",array("wt_caochs_data.id","wt_caochs.id"))->select();
		$this->assign("caochs",$data);
        //显示驾校资讯
        $data = ContentModel::getInstance(2)->relationJoin("wt_articles_data",array("wt_articles.id","wt_articles_data.id"))->orderBy("inputtime desc")->limit(6)->select();
        $this->assign("articles",$data);
        //显示主导航
        $data = ContentModel::getInstance(3)->where(array("catid"=>4))->select();
        $this-> assign("menus",$data);
        //显示侧导航
        $data = ContentModel::getInstance(3)->where(array("catid"=>8))->select();
        $this-> assign("side_menus",$data);
        //获取公司信息
        $data = M("companymsg")->select();
        $this -> assign("info",$data);
        $this->display();
    }

    /*
	显示班型信息
    */
    public function regularbus()
    {
    	$SEO = seo('', '', self::$Cache['Config']['siteinfo'], self::$Cache['Config']['sitekeywords']);
        //seo分配到模板
        $this->assign("SEO", $SEO);
        //查询班车信息栏目的数据
        $data =ContentModel::getInstance(1)->relationJoin("wt_shuttles_data",array("wt_shuttles_data.id","wt_shuttles.id"))->select();
		$this->assign("data",$data);
        //导航菜单
		$data = ContentModel::getInstance(3)->where(array("catid"=>4))->select();
		$this->assign("menus",$data);
        //获取公司信息
        $data = M("companymsg")->select();
        $this -> assign("info",$data);
         //显示侧导航
        $data = ContentModel::getInstance(3)->where(array("catid"=>8))->select();
        $this-> assign("side_menus",$data);
    	$this->display();
    }

	/*
	显示新闻
	*/
    public function show() 
    {
        $catid = I('get.catid', 0, 'intval');
        $id = I('get.id', 0, 'intval');
        //SEO
        $SEO = seo('', '', self::$Cache['Config']['siteinfo'], self::$Cache['Config']['sitekeywords']);
        //seo分配到模板
        $this->assign("SEO", $SEO);
        //获取新闻数据
		$data =ContentModel::getInstance(2)->relationJoin("wt_articles_data",array("wt_articles.id","wt_articles_data.id"))->where(array("wt_articles.id"=>$catid))->find();
        $this->assign("article",$data);
        //seo分配到模板
        $this->assign("SEO", $seo);
        //导航菜单
        $data = ContentModel::getInstance(3)->where(array("catid"=>4))->select();
        $this->assign("menus",$data);
        //获取公司信息
        $data = M("companymsg")->select();
        $this -> assign("info",$data);
         //显示侧导航
        $data = ContentModel::getInstance(3)->where(array("catid"=>8))->select();
        $this-> assign("side_menus",$data);
        $this->display();
    }
    
    /*
    教练信息
    */
    public function caochs() {
        //SEO
        $SEO = seo('', '', self::$Cache['Config']['siteinfo'], self::$Cache['Config']['sitekeywords']);
        //seo分配到模板
        $this->assign("SEO", $SEO);
        //获取教练数据
		$data =ContentModel::getInstance(4)->limit(I("page")-1,20)->relationJoin("wt_caochs_data",array("wt_caochs.id","wt_caochs_data.id"))->select();
        $this->assign("caochs",$data);
        //获取页面数量
        $count=ceil(ContentModel::getInstance(4)->count()/20);
        $this->assign("count",$count);
        //seo分配到模板
        $this->assign("SEO", $seo);
        //导航菜单
        $data = ContentModel::getInstance(3)->where(array("catid"=>4))->select();
        $this->assign("menus",$data);
        //获取公司信息
        $data = M("companymsg")->select();
        $this -> assign("info",$data);
         //显示侧导航
        $data = ContentModel::getInstance(3)->where(array("catid"=>8))->select();
        $this-> assign("side_menus",$data);
        $this->display();
    }

	/*
	关于万通
    */
    public function about()
    {
    	
    	$SEO = seo('', '', self::$Cache['Config']['siteinfo'], self::$Cache['Config']['sitekeywords']);       
        //seo分配到模板
        $this->assign("SEO", $SEO);
        //查询驾校简介内容
        $data =ContentModel::getInstance(5)->relationJoin("wt_intro_data",array("wt_intro_data.id","wt_intro.id"))->select();
		$this->assign("data",$data);
        //导航菜单
        $data = ContentModel::getInstance(3)->where(array("catid"=>4))->select();
        $this-> assign("menus",$data);
        //获取公司信息
        $data = M("companymsg")->select();
        $this -> assign("info",$data);
        //左菜单
        $data=M("category")->where(array("parentid"=>10))->select();
        $this->assign("left_menus",$data);
        $left_menus_where="";
        foreach($data as $key => $value)
        {
            $left_menus_where=$left_menus_where."catid=".$value['catid']." or ";
        }
        $left_menus_where=substr($left_menus_where, 0,-3);
        //单网页数据
        $data=M("page")->where($left_menus_where)->select();
        $this->assign("pages",$data);
    	$this->display();
    }

	/*
	学车指南
    */
    public function guide()
    {
        $catid=I("catid");
        $data=M("page")->where(array("catid"=>$catid))->find();
        $this->assign("page",$data);
    	$SEO = seo('', '', self::$Cache['Config']['siteinfo'], self::$Cache['Config']['sitekeywords']);
        //seo分配到模板
        $this->assign("SEO", $SEO);
       //导航菜单
        $menu=ContentModel::getInstance(3)->where(array("catid"=>4))->select();
        $this->assign("menus",$menu);
         //显示侧导航
        $data = ContentModel::getInstance(3)->where(array("catid"=>8))->select();
        $this-> assign("side_menus",$data);
        //获取公司信息
        $data = M("companymsg")->select();
        $this -> assign("info",$data);
    	$this->display();
    }
    
	/*
	留言中心
    */
    public function message()
    {
    	$SEO = seo('', '', self::$Cache['Config']['siteinfo'], self::$Cache['Config']['sitekeywords']);
        //seo分配到模板
        $this->assign("SEO", $SEO);
        //查询驾校简介内容
        $data =ContentModel::getInstance(5)->relationJoin("wt_strcar_data",array("wt_intro_strcar.id","wt_strcar.id"))->select();
		$this->assign("data",$data);
        //查询班车信息栏目的数据
        $data =ContentModel::getInstance(1)->relationJoin("wt_shuttles_data",array("wt_shuttles_data.id","wt_shuttles.id"))->select();
        $this->assign("data",$data);
        //导航菜单
       $data = ContentModel::getInstance(3)->where(array("catid"=>4))->select();
        $this-> assign("menus",$data);
        //获取公司信息
        $data = M("companymsg")->select();
        $this -> assign("info",$data);
         //显示侧导航
        $data = ContentModel::getInstance(3)->where(array("catid"=>8))->select();
        $this-> assign("side_menus",$data);
    	$this->display();
    }

    /*
    留言处理
    */
    public function messageIn()
    {
        $message=array(
            "name"=>I("name"),
            "phone"=>I("phone"),
            "type"=>I("type"),
            "infotitle"=>I("title"),
            "body"=>I("body"),
            "isHandle"=>0
            );
        if($message["name"]!=null&&$message["phone"]!=null&&$message["infotitle"]!=null&&$message["body"]!=null)
        {
            M("message_data")->add($message);
            $this->success("留言成功,我们会尽快回复您!");
        }
        else
        {
            $this->error("留言失败，你填写的信息不完整！");
        }
    }

    /*
    显示个人报名页
    */
    public function registration()
    {
        $SEO = seo('', '', self::$Cache['Config']['siteinfo'], self::$Cache['Config']['sitekeywords']);
        //seo分配到模板
        $this->assign("SEO", $SEO);
        //获取班型数据
        $data=ContentModel::getInstance(1)->relationJoin("wt_shuttles_data",array("wt_shuttles_data.id","wt_shuttles.id"))->select();
        $this->assign("types",$data);
        //获取证件类型数据
        $data=split(',',M("companymsg")->where(array("id"=>6))->select()[0]["value"]);
        $this->assign("papers",$data);
        //查询班车信息栏目的数据
        $data =ContentModel::getInstance(1)->relationJoin("wt_shuttles_data",array("wt_shuttles_data.id","wt_shuttles.id"))->select();
        $this->assign("data",$data);
        //导航菜单
        $data = ContentModel::getInstance(3)->where(array("catid"=>4))->select();
        $this-> assign("menus",$data);
        //获取公司信息
        $data = M("companymsg")->select();
        $this -> assign("info",$data);
         //显示侧导航
        $data = ContentModel::getInstance(3)->where(array("catid"=>8))->select();
        $this-> assign("side_menus",$data);
        $this->display();
    }

    /*
    报名处理
    */
    public function registrationIn()
    {
        $userInfo=array(
            "name"=>I("name"),
            "phone"=>I("phone"),
            "QQ"=>I("QQ"),
            "sex"=>I("sex")==1?"男":"女",
            "papers"=>I("papers"),
            "papersId"=>I("papersId"),
            "type"=>I("type"),
            "isLocal"=>I("isLocal"),
            "isShack"=>I("isShack"),
            "message"=>I("content"),
            "isHandle"=>0
            );
        if($userInfo["name"]!=null&&$userInfo["phone"]!=null&&$userInfo["QQ"]!=null&&$userInfo["papersId"]!=null)
        {
            M("users")->add($userInfo);
            $this->success("报名成功，我们会尽快与你联系！");
        }
        else
        {
            $this->error("报名失败，你填写的信息不完整！");
        }
    }

    /*
    查看留言
    */
    public function showMessage()
    {
        $SEO = seo('', '', self::$Cache['Config']['siteinfo'], self::$Cache['Config']['sitekeywords']);
        //seo分配到模板
        $this->assign("SEO", $SEO);
        $page=I("page");
        $messages=M("message_data")->limit(($page-1)*10,10)->orderBy("id desc")->select();
        $this->assign("messages",$messages);
        $count=Ceil(M("message_data")->count()/10);
        $this->assign("count",$count);
        //导航菜单
        $data = ContentModel::getInstance(3)->where(array("catid"=>4))->select();
        $this-> assign("menus",$data);
        //获取公司信息
        $data = M("companymsg")->select();
        $this -> assign("info",$data);
        $this->display();
    }

    /*
    显示预约训练
    */
    public function appointment()
    {
        $SEO = seo('', '', self::$Cache['Config']['siteinfo'], self::$Cache['Config']['sitekeywords']);
        //seo分配到模板
        $this->assign("SEO", $SEO);
        //导航菜单
        $data = ContentModel::getInstance(3)->where(array("catid"=>4))->select();
        $this-> assign("menus",$data);
        //获取公司信息
        $data = M("companymsg")->select();
        $this -> assign("info",$data);
         //显示侧导航
        $data = ContentModel::getInstance(3)->where(array("catid"=>8))->select();
        $this-> assign("side_menus",$data);
        $this->display();
    }

    /*
    显示学车档案
    */
    public function fieldsmanage()
    {
        $SEO = seo('', '', self::$Cache['Config']['siteinfo'], self::$Cache['Config']['sitekeywords']);
        //seo分配到模板
        $this->assign("SEO", $SEO);
        //导航菜单
        $data = ContentModel::getInstance(3)->where(array("catid"=>4))->select();
        $this-> assign("menus",$data);
        //获取公司信息
        $data = M("companymsg")->select();
        $this -> assign("info",$data);
         //显示侧导航
        $data = ContentModel::getInstance(3)->where(array("catid"=>8))->select();
        $this-> assign("side_menus",$data);
        $this->display();
    }

    /*
    显示成绩档案
    */
    public function processe() 
    {
        $phone = $_POST['phone'];
        if($phone == NULL) 
        {
            $message = array( "status" => "msgnull");
            $this->ajaxReturn($message,'JSON');
        }
        
        else {
            //获取档案信息
            $data = M('fields')->where(array("userId"=>$phone))->select();
            if($data) {
                $message = array( "status" => "ok","data"=>$data);
                $this->ajaxReturn($message,'JSON');
            }
            else {
            $message = array( "status" => "no");
            $this->ajaxReturn($message,'JSON');
            }
        }
    }

    /*
    获取客户QQ
    */
    public function getCustomer()
    {
        $data=M("companymsg")->where(array("id"=>12))->find();
        $customers=split(',', $data["value"]);
        $custJson=array();
        foreach ($customers as $key => $value) {
           $custJson[$key]["value"]=$value;
        }
        $this->ajaxReturn($custJson,'JSON');
    }

    /*
    教练点评
    */
    public function evaluate()
    {
        $SEO = seo('', '', self::$Cache['Config']['siteinfo'], self::$Cache['Config']['sitekeywords']);
        //seo分配到模板
        $this->assign("SEO", $SEO);
        //获取教练数据
        $data =ContentModel::getInstance(4)->limit(I("page")-1,20)->relationJoin("wt_caochs_data",array("wt_caochs.id","wt_caochs_data.id"))->select();
        $this->assign("caochs",$data);
        //获取页面数量
        $count=ceil(ContentModel::getInstance(4)->count()/20);
        $this->assign("count",$count);
        //seo分配到模板
        $this->assign("SEO", $seo);
        //导航菜单
        $data = ContentModel::getInstance(3)->where(array("catid"=>4))->select();
        $this->assign("menus",$data);
        //获取公司信息
        $data = M("companymsg")->select();
        $this -> assign("info",$data);
         //显示侧导航
        $data = ContentModel::getInstance(3)->where(array("catid"=>8))->select();
        $this-> assign("side_menus",$data);
        $this->display();
    }

    /*
    教练点评处理
    */
    public function evaluateIn()
    {
        $evaluate=I("column");
        $id=I("cid");
        $num=M("caochs")->join("wt_caochs_data on wt_caochs_data.id=wt_caochs.id","")->where(array("wt_caochs.id"=>$id))->find()["$evaluate"];
        $num=intval($num)+1;
        $data=M("caochs_data")->where(array("id"=>$id))->setField("$evaluate",$num+"");
        if($data)
        {
            $json=array("res"=>1,"num"=>$num);
        }
        else
        {
            $json=array("res"=>0);
        }
        $this->ajaxReturn($json,"JSON");
    }

    /*
    团体报名
    */
    public function group()
    {
        $SEO = seo('', '', self::$Cache['Config']['siteinfo'], self::$Cache['Config']['sitekeywords']);
        //seo分配到模板
        $this->assign("SEO", $SEO);
        //导航菜单
        $data = ContentModel::getInstance(3)->where(array("catid"=>4))->select();
        $this-> assign("menus",$data);
        //获取公司信息
        $data = M("companymsg")->select();
        $this -> assign("info",$data);
         //显示侧导航
        $data = ContentModel::getInstance(3)->where(array("catid"=>8))->select();
        $this-> assign("side_menus",$data);
        $this->display();
    }

    /*
    团体报名处理
    */
    public function groupIn()
    {
        $userInfo=array(
            "company"=>I("company"),
            "name"=>I("name"),
            "phone"=>I("phone"),
            "QQ"=>I("QQ"),
            "sex"=>I("sex")==1?"男":"女",
            "content"=>I("content"),
            "isHandle"=>0
            );
        if($userInfo["company"]!=null&&$userInfo["name"]!=null&&$userInfo["phone"]!=null&&$userInfo["QQ"]!=null)
        {
            $data=M("companyusers")->add($userInfo);
            if($data)
            {
                $this->success("报名成功，我们会尽快与你联系！");
            }
            else{
               $this->error("报名失败，你填写的信息不合法！"); 
            }
        }
        else
        {
            $this->error("报名失败，你填写的信息不完整！");
        }
    }
}
?>