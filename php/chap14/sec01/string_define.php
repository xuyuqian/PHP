<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/16
	 * Time: 21:48
	 * Features: 字符串
	 */

	// 引号定义
	$str1 = 'hello';
	$str2 = "hello";
	var_dump($str1, $str2);

	echo '<hr>';

	// 结构化定义
	// heredoc结构
	$str3 = <<<EOD
		hello
				world
EOD;
	// nowdoc结构
	$str4 = <<<'EOD'
		hello
				world
EOD;
	var_dump($str3, $str4);
	echo '<hr>';


 