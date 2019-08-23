<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/23
	 * Time: 下午 10:52
	 * Features: 查找算法
	 */

	// 查找算法

	$arr = array(1, 3, 6, 8, 7, 7, 23, 68, 100);

	//二分查找算法
	function check_break($arr, $res)
	{
		//1. 得到数组边界
		$right = count($arr);
		$left = 0;
		// 2. 循环匹配
		while ($left <= $right) {
			//3. 得到中间位置
			$middle = floor(($right + $left) / 2);

			//匹配数据
			if ($arr[$middle] == $res) {
				return $middle + 1;
			}

			//5. 没有找到
			if ($arr[$middle] < $res) {
				//值在右边
				$left = $middle + 1;
			} else {
				//值在左边
				$right = $middle - 1;
			}

		}
		return false;
	}

	var_dump(check_break($arr, 0));
