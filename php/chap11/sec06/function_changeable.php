<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/15
	 * Time: 22:28
	 * Features: 可变函数
	 */

	// 可变函数

	// 定义函数
	function display()
	{
		echo __LINE__, __FUNCTION__;
	}

	//定义变量
	$func = 'display';

	//可变函数
	// $func();

	// 定义系统函数（假设）
	function sys_function($arg1, $arg2)
	{
		// 给指定的函数（第一个参数），求对应的第二个参数值得4次方
		//为实际用户输入的数值进行处理
		$arg2 = $arg2 + 10;

		return $arg1($arg2);

	}

	//定义一个用户函数：求一个数的四次方
	function user_function($num)
	{
		//将一个用户定义的函数传入给另外一个函数（函数名）去使用的过程，称之为回调过程，而被传入的函数称之为回调函数
		return $num * $num * $num * $num;
	}

	// 求10的4次方
	echo sys_function('user_function',10);
