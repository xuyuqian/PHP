<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/23
	 * Time: 下午 10:15
	 * Features: 归并排序
	 */
	// 归并排序

	// 二路归并
	$arr1 = array(1, 3, 5);
	$arr2 = array(2, 4, 6);

	//取出一个空数组用于归并空间
	$arr3 = array();
	while (count($arr1) && count($arr2)) {
		//只要$arr1和$arr2里面还有元素，就进行循环
		//取出每个数组的第一个元素：进行比较
		$arr3[] = $arr1[0] < $arr2[0] ? array_shift($arr1) : array_shift($arr2);
	}
	//合并结果
	print_r(array_merge($arr3, $arr1, $arr2));

