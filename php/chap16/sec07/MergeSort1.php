<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/23
	 * Time: 下午 10:15
	 * Features: 归并排序
	 */
	// 归并排序
	$arr = array(4, 7, 2, 1, 5, 9, 3);

	//归并排序
	function merge_sort($arr)
	{
		//递归出口
		$len = count($arr);
		if ($len <= 1)
			return $arr;

		//拆分
		$middle = floor($len / 2);
		$left = array_slice($arr, 0, $middle);
		$right = array_slice($arr, $middle);

		//递归点：$left和$right都没有排好序：而且可能是多个元素的数组
		$left = merge_sort($left);
		$right = merge_sort($right);

		//假设左边和右边都已经排好序：二路归并
		//取出一个空数组用于归并空间
		$arr3 = array();
		while (count($left) && count($right)) {
			//只要$arr1和$arr2里面还有元素，就进行循环
			//取出每个数组的第一个元素：进行比较
			$arr3[] = $left[0] < $right[0] ? array_shift($left) : array_shift($right);
		}
		//合并结果
		return array_merge($arr3, $left, $right);
	}

	print_r(merge_sort($arr));
	