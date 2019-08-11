<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/11
	 * Time: 15:37
	 * Features: do-while循环
	 */

	// do-while循环结构

	// 输出1到10之间的偶数（条件判定加入）
	// 定义基础条件
	$i = 1;

	// 循环判定
	do {
		// 执行输出
		if ($i % 2 != 1){
			// 是偶数
			echo $i,'<br/>';   //条件变更
		}
		//条件变更
		$i++;
	}while($i<=10);