<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/11
	 * Time: 15:50
	 * Features: 循环控制
	 */

	// 循环控制

	// 需求：输出1到100之间5的倍数

	$i=1;

	while ($i<=100){
		// 判断:是否是5的倍数
		if ($i%5!=0){
			// 说明当前$i不是5的倍数

			//重新循环
			$i++;

			//重新循环
			// continue;   //系统重新跳到循环开始处

			//终止循环
			break;
		}

		// 输出数值
		echo $i++,'<br/>';
	}
	echo $i;
 