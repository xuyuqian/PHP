<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/15
	 * Time: 22:14
	 * Features: 静态变量
	 */

	// 静态变量
	// 定义函数
	function display()
	{
		//定义变量
		$local = 1;    //局部变量

		//定义静态变量
		static $count = 1;   //静态变量

		echo $local++, $count++, '<br/>';
	}

	//调用
	display();
	display();
	display();
	display();

 
 