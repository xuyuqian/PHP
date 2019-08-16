<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/16
	 * Time: 22:27
	 * Features: 字符串长度
	 */
	// 字符串长度

	// 定义字符串
	$str1 = 'aknsfjknkfsjadnf';
	$str2 = '你好123';
	echo strlen($str1), '<br/>', strlen($str2);

	echo '<hr>';
	// 使用mbstring扩展
	echo mb_strlen($str1), '<br/>', mb_strlen($str2), '<br/>', mb_strlen($str2, 'utf-8');