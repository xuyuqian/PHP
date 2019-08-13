<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/13
	 * Time: 15:02
	 * Features: 系统函数
	 */

	// 系统函数

	// 时间函数
	echo date('Y 年 m 月 d 日 H:i:s', 12345678), '<hr/>';
	echo time(), '<hr/>';
	echo microtime(), '<hr/>';

	echo strtotime("now"), "\n";
	echo strtotime("10 September 2000"), "\n";
	echo strtotime("+1 day"), "\n";
	echo strtotime("+1 week"), "\n";
	echo strtotime("+1 week 2 days 4 hours 2 seconds"), "\n";
	echo strtotime("next Thursday"), "\n";
	echo strtotime("last Monday"), "\n";
 
 