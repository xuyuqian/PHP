<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/10
	 * Time: 23:09
	 * Features: if分支
	 */

	// 分支结构：if分支

	//最简if
	$day = 'weekend';

	// 如果是星期天就出去玩
	if ($day == 'sunday') {
		echo 'go out';
	}


	// 基本if判断
	// 如果是星期天就出去玩，否则上班
	if ($day == 'sunday') {
		echo 'go out play';
	} else {
		// 不满足条件
		echo 'work';
	}


	// 复合if结构
	// 如果是星期天就出去玩，否则不能，但是如果是星期六，那么可以在家玩
	echo '<hr/>';
	$day = 'saturday';
	if ($day == 'sunday') {
		echo 'go out';
	} else {
		// 包含全部不满足情况
		// 重新进行判断
		if ($day == 'saturday') {
			echo 'play at home';
		} else {
			echo 'work';
		}
	}

	echo '<hr/>';
	if ($day == 'sunday') {
		echo 'go out';
	} elseif ($day == 'saturday') {
		echo 'play at home';
	} else {
		echo 'work';
	}