<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/16
	 * Time: 13:38
	 * Features: 有关函数的函数
	 */

	//函数相关的函数
	echo '<pre>';
	function test($a, $b)
	{
		//获取指定参数
		var_dump(func_get_arg(1));

		//获取所有参数
		var_dump(func_get_args());

		//获取参数数量
		var_dump(func_num_args());
	}

	//调用函数
	function_exists('test') && test(1, '2', 3, 4);
 
 
 