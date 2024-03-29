<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/22
	 * Time: 下午 4:25
	 * Features: 选择排序
	 */

	// 选择排序

	$arr = array(1, 5, 2, 9, 6, 3, 4);

	// 1. 确定要交换多少次：依次只能找到一个最小的，需要找数组长度对应的次数
	for ($i = 0, $len = count($arr); $i < $len; $i++) {
		// 2. 假设当前第一个已经排好序
		$min = $i;    //当前第一个数是最小的
		//3. 拿该最小的去比较剩余的其他
		for ($j = $i + 1; $j < $len; $j++) {
			//4. 比较：比较当前元素与选定的最小的元素
			if ($arr[$j] < $arr[$min]) {
				//说明当前指定的$min不合适
				$min = $j;
			}
		}

		//5. 交换当前选定的值与实际最小的元素值
		if ($min != $i) {
			$temp = $arr[$i];
			$arr[$i] = $arr[$min];
			$arr[$min] = $temp;
		}
	}

	echo '<pre>';
	print_r($arr);
 
 