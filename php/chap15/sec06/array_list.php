<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/17
	 * Time: 下午 11:39
	 * Features: while配合each和list遍历数组
	 */

	// while配合each和list遍历数组

	// list结构
	$arr = array(1, 2 => 1);
	list($first, $second, $q) = $arr;    //错误:second变量对应的下标为元素下标1的,但是数组没有
	var_dump($first, $second, $q);


	// while循环
	$arr = array(1, 'name' => 'Tom', 3, 'age' => 30);