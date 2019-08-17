<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/17
	 * Time: 下午 2:17
	 * Features: 多维数组
	 */

	// 多维数组
	// 定义二维数组
	$info = array(
		array('name' => 'Jim', 'age' => 30),
		array('name' => 'Jim1', 'age' => 20),
		array('name' => 'Jim2', 'age' => 10)      //最后一个元素，后面可以跟逗号不影响（不建议）
	);
	echo '<pre>';
	print_r($info);