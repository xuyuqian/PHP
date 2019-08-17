<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/17
	 * Time: 下午 11:39
	 * Features: while配合each和list遍历数组
	 */

	// while配合each和list遍历数组

	// while循环
	$arr = array(1, 'name' => 'Tom', 3, 'age' => 30);

	while (list($key, $value) = each($arr)) {
		//list搭配each
		// list($key, $value) = each($arr);
		//输出
		echo 'key is:' . $key . 'value is :' . $value . '<br/>';
	}