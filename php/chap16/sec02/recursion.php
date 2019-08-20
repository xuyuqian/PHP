<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/20
	 * Time: 下午 8:28
	 * Features: 递归思想
	 */

	// 递归思想

	// 递归一定有函数
	function recursion($n)
	{
		//递归出口
		if ($n == 1 || $n == 2)
			return 1;
		//递归点：求N的值，与求N-1得值一模一样，只是N-1的规模比N小
		return recursion($n - 1) + recursion($n - 2);
	}

	//调用
	echo recursion(15);
 