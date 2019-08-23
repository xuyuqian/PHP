<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/23
	 * Time: 下午 10:52
	 * Features: 查找算法
	 */

	// 查找算法

	// 顺序查找

	$arr = array(1, 3, 6, 8, 7, 7, 23, 68, 100);

	// 顺序查找
	function check_order($arr, $num)
	{

		//全部匹配
		$flag = false;
		for ($i = 0, $len = count($arr); $i < $len; $i++) {
			//判断
			if ($arr[$i] == $num) {
				echo 'arr[' . $i . ']=' . $num . "<br>";
				$flag = true;
			}
		}
		if ($flag == false) {
			echo "查无此数！";
		}
	}

	print_r(check_order($arr, 7));

