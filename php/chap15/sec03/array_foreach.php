<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/17
	 * Time: 下午 11:11
	 * Features: 数组遍历：foreach
	 */

	// 数组遍历：foreach

	// 定义数组
	$arr = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 0);

	// foreach循环
	foreach ($arr as $v) {
		//$v随意命名
		echo $v, '<br/>';
	}

	// foreach循环
	foreach ($arr as $k => $v) {
		//$v随意命名
		echo 'key:', $k, '==value:', $v, '<br/>';
	}

	$arr = array(
		0 => array('name' => 'Tome', 'age' => 30),
		1 => array('name' => 'Tome1', 'age' => 20),
		2 => array('name' => 'Tome2', 'age' => 10)
	);
	// 通过foreach遍历一维元素
	foreach ($arr as $value) {
		// 1.可以继续遍历：增加foreach遍历$value
		// 2.可以使用下标访问
		echo 'name is:', $value['name'], 'and age is:', $value['age'], '<br/>';
	}