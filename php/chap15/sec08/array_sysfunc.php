<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/18
	 * Time: 下午 9:46
	 * Features: 数组排序
	 */

	//排序函数
	$arr = array(3, 1, 5, 2, 0);
	echo '<pre>';

	sort($arr);
	print_r($arr);
	echo '<hr>';

	$arr1 = array(3, 1, 5, 2, 0);
	asort($arr1);
	print_r($arr1);

	echo '<hr>';
	$arr3 = array(3, 1, 5, 2, 0);
	krsort($arr3);
	print_r($arr3);

	echo '<hr>';
	$arr4 = array(3, 1, 5, 2, 0);
	shuffle($arr4);
	print_r($arr4);
	shuffle($arr4);
	print_r($arr4);