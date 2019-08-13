<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/13
	 * Time: 20:37
	 * Features: 文件包含
	 */

	//包含文件：使用数据
	echo 'hello world';
	//包含文件
	include 'include1.php';   //包含当前文件include2.php所在文件夹下的include1.php
	echo $a, PI;
 
 	// 再次包含
	include 'include1.php';
	include_once 'include1.php';

