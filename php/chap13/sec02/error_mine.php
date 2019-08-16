<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/16
	 * Time: 14:51
	 * Features: 自定义错误处理机制
	 */

	// 自定义错误处理机制

	// 自定义函数
	/*
	 * @param1 $errno,是系统提供的错误代码：E_ALL，E_NOTICE...
	 */
	function myerrors($errno, $errstr, $errorfile, $errorline)
	{
		// 判断：当前会碰到错误有哪些
		if (!(error_reporting() & $errno)) {   //error_reporting没有参数代表获取当前系统错误处理对应的级别
			return false;
		}
		// 开始判断错误类型
		switch ($errno) {
			case E_ERROR:
			case E_USER_ERROR:
				echo 'fatal error in file ' . $errorfile . 'on line' . $errorline . '<br/>';
				echo 'error info:' . $errstr;
				break;
			case E_WARNING:
			case E_USER_WARNING:
				echo 'Warning error in file ' . $errorfile . 'on line' . $errorline . '<br/>';
				echo 'error info:' . $errstr;
				break;
			case E_NOTICE:
			case E_USER_NOTICE:
				echo 'Notice error in file ' . $errorfile . 'on line' . $errorline . '<br/>';
				echo 'error info:' . $errstr;
				break;
		}
		return true;
	}

	// 报错
	echo $a;

	// 修改错误机制
	set_error_handler('myerrors');
	echo $a;