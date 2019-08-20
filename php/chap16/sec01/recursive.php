<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/20
	 * Time: 下午 8:06
	 * Features: 递推思想
	 */

	// 递推思想（算法）
	// 需求：规律 1 1 2 3 5
	// 求出指定位数对应的值



	function my_recursive($des)
	{
		//判断：如果为第一个或者第二个
		if ($des == 1 || $des == 2)
			return 1;
		// 开始计算
		$f[1] = 1;
		$f[2] = 1;    //如果想要第一个或者第二个结果，那么可以直接给出
		for ($i = 3; $i <= $des; $i++) {
			$f[$i] = $f[$i - 1] + $f[$i - 2];
		}
		//返回最后一个位置的结果
		return $f[$des];
	}

	echo my_recursive(15);