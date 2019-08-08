<?php


/*
 * Create by PhpStorm
 * Author: Yan
 * Date: 2019/8/8
 * Time: 15:06
 * Features: 数据类型
 */
	// 数据类型
	// 创建数据
	$a='abc1.1.1';
	$b='1.1.1.abc';

	// 自动转换
	echo $a+$b;    //算术运算，系统先转换成数值类型（整型和浮点型），然后运算

	//强制转换
	echo '<br/>',(float)$a,(float)$b;

	// 判断数据类型
	echo '<hr/>';
	var_dump(is_int($a));        //false
	var_dump(is_string($a));     //true

	echo '<hr/>';
	echo gettype($a);

	// 设置类型
	echo '<hr/>';
	var_dump(settype($b,'int'));
	echo gettype($b),$b;

 
 
 