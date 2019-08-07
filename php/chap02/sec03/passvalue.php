<?php


/*
 * Create by PhpStorm
 * Author: Yan
 * Date: 2019/8/7
 * Time: 16:04
 * Features: 变量传值
 */

	// 变量传值
 	// 值传递
	$a=10;
	$b=$a;
	$b=5;
	echo $a,$b,'<br/>';

	//引用传递
	$c=10;
	$d=&$c;
	$c=5;
	echo $c,$d,'<br/>';

 