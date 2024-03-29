<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/15
	 * Time: 23:03
	 * Features: 匿名函数
	 */

	// 匿名函数

	// 定义基本匿名函数
	$func = function () {
		//函数体
		echo 'hello world';
	};

	// 调用匿名函数：可变函数
	$func();
	echo '<hr>';

	// 查看变量内容
	var_dump($func);
	echo '<hr>';


	// 闭包函数
	function display()
	{
		// 定义变量：局部变量
		$name = __FUNCTION__;

		// 定义匿名函数
		$innerfunction = function () use ($name) {   //use就是将外部变量（局部）保留给内部使用（闭包）
			//函数内部的函数
			// echo $name;
		};

		// 调用函数
		$innerfunction();
	}

	display();

	echo '<hr>';

	function display1()
	{
		// 定义变量：局部变量
		$name = __FUNCTION__;

		// 定义匿名函数
		$innerfunction = function () use ($name) {   //use就是将外部变量（局部）保留给内部使用（闭包）
			//函数内部的函数
			echo $name;
		};

		// 返回内部匿名函数
		return $innerfunction;
	}

	$closure = display1();

	//到66行位置：display1函数运行结束：理论上局部变量$name应该已经被释放
	$closure();