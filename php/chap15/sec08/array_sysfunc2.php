<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/18
	 * Time: 下午 9:46
	 * Features: 其他函数
	 */

	//其他函数

	// 模拟数据结构：栈和队列
	$arr = array();

	//栈：先压栈后出栈：都是从一端出来
	// 前面：array_shift和array_unshift
	// 后面：array_push和array_pop
	// 压栈
	array_push($arr, 3);
	array_push($arr, 2);
	array_push($arr, 1);
	print_r($arr);

	// 出栈
	echo array_pop($arr), array_pop($arr), array_pop($arr), '<br/>';


	// 队列：先排队，先出来，一端进，另外一端出
	//后进前出:array_push和array_shift
	//前进后出:array_unshift和arrap_pop
	$arr = array();

	// 入队
	array_unshift($arr, 3);
	array_unshift($arr, 2);
	array_unshift($arr, 1);
	print_r($arr);
	// 出队
	echo array_pop($arr), array_pop($arr), array_pop($arr), '<br/>';

	$arr = array(1, 2, 3, 6, 5);
	print_r(array_reverse($arr));

	var_dump(in_array(100, $arr));
	var_dump(in_array(1, $arr));

	print_r(array_keys($arr));
	print_r(array_values($arr));
