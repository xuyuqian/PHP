<?php


/*
 * Create by PhpStorm
 * Author: Yan
 * Date: 2019/8/8
 * Time: 19:58
 * Features: 简单数据类型：整型、浮点型和布尔型
 */


	// 定义四种整形数据
	$a1=110;
	$a2=0b110;
	$a3=0110;
	$a4=0x110;

	echo $a1,'~',$a2,'~',$a3,'~',$a4,'<hr/>';    //默认的PHP输出数值都会自动转换成十进制输出

	// 利用进制函数运算
	var_dump(decbin(107));


	// 浮点数
	$f1=1.23;
	$f2=1.23e10;
	$f3=PHP_INT_MAX+1;   //整型超过自身存储的大小之后会用浮点型存储。
	echo '<hr/>';
	var_dump($f1,$f2,$f3);


	//浮点数判断
	$f4=0.7;
	$f5=2.1;
	$f6=$f5/3;
	echo '<hr/>';
	var_dump($f4==$f6);

	// 布尔类型
	echo '<hr/>';
	$b1=true;
	$b2=false;
	var_dump($b1,$b2);