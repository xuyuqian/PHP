<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/18
	 * Time: 下午 9:46
	 * Features: 指针函数
	 */

	//指针函数
	$arr = array(3, 1, 5, 2, 0);
	echo '<pre>';

	echo current($arr), '<br/>';
	echo key($arr), '<br/>';

	echo next($arr), next($arr), '<br/>';
	echo prev($arr), '<br/>';

	echo end($arr), '<br/>';
	echo reset($arr), '<br/>';