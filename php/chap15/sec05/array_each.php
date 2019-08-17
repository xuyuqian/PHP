<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/17
	 * Time: 下午 11:39
	 * Features: while配合each和list遍历数组
	 */

	// while配合each和list遍历数组
	$arr = array(1, 'name' => 'Tom', 3, 'age' => 30);
	echo '<pre>';
	// each函数指针操作
	print_r(each($arr));
	print_r(each($arr));


	// list结构
	$arr = array(1, 2 => 1);
	list($first) = $arr;
	var_dump($first);