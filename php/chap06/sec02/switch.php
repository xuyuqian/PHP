<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/10
	 * Time: 23:30
	 * Features: switch 分支
	 */

	//switch分支
	// 根据日期做不同的事情
	$day=1;

	//从1到7做不同的事情
	switch ($day){
		//$day条件一定是个具体的值
		case 1:    //$day==1
			echo '1';
			break;
		case 2:
			echo '2';
			break;
		case 3:
			echo '3';
			break;
		case 4:
			echo '4';
			break;
		case 5:
			echo '5';
			break;
		default:
			echo 'error';
			break;
	}
 
 
 