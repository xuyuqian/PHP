<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/17
	 * Time: 13:39
	 * Features: 数组
	 */
	// 数组

	// 定义数组
	$arr1 = array('1', 2, 'hello');
	var_dump($arr1);
	echo '<hr>';

	// 定义数组：[]
	$arr2 = ['1', 2, 'hello'];
	var_dump($arr2);
	echo '<hr>';

	// 隐形数组
	$arr3[] = 1;
	$arr4[10] = 1;
	$arr4[] = '1';
	$arr5['key'] = 'key';
	var_dump($arr3);
	echo '<hr>';
	var_dump($arr4);    //注意$arr4的下标
	echo '<hr>';
	var_dump($arr5);
	echo '<hr>';

	//特殊下标转换
	$arr6[false] = false;
	$arr6[true] = true;
	$arr6[NULL] = NULL;
	var_dump($arr6);
	echo '<hr>';