<?php


/*
 * Create by PhpStorm
 * Author: Yan
 * Date: 2019/8/7
 * Time: 16:27
 * Features: 常量
 */

	// 常量
	// 使用函数定义常量:define
	define('PI',3.14);

	// 使用const关键字定义
	const PII=3;

	// 定义特殊常量
	define('-_-','small');
	// const -_-='smali';   //错误

	// 使用常量
	echo PI;

	// echo -_-;    //特殊符号不能直接使用
	echo constant('-_-');