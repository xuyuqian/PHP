<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/16
	 * Time: 22:03
	 * Features: 转义符号
	 */

	// 定义字符串识别转义符号
	$str1 = 'abc\r\ndef\t\'\"\$fg';
	$str2 = "abc\r\ndef\t\'\"\$fg";
	echo $str1, '<br>', $str2;
	echo '<hr>';

	$a = 'hello';
	//变量识别
	$str3 = 'abc  $a  dfg';
	$str4 = "abc  $a  dfg";
	$str5 = "abc  $adfg";
	$str6 = "abc{$a}dfg";
	echo $str3, '<br>', $str4, '<br>', $str5, '<br>', $str6;

	echo '<hr>';

	$str7 = <<<EOD
	//js
	<script>
		alert('$str3');
	</script>
EOD;
	echo $str7;