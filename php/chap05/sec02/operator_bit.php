<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/9
	 * Time: 22:22
	 * Features: 位运算
	 */

	// 位运算
	$a = 5;
	$b = -5;

	/*
	 * 5原码：00000101
	 *
	 *
	 * -5原码：10000101
	 * 取反：11111010    反码：符号位不变，其他位取反
	 * 求补：11111011   补码：反码+1
	 */

	echo '<hr/>';
	// 按位右移
	var_dump($b >> 1);
	var_dump($b >> 2);
	/*
	 * -5   11111011    补码
	 * >>2    11111110    //运算结果：补码
	 * -1     11111101       //反码
	 * 取反    1000010      //原码：-2
	 */


	echo '<hr/>';
	// 按位非
	var_dump(~$b);
	/*
	 * -5 11111011    补码
	 * 取反   00000100
	 * 原码   00000100
	 */

	echo '<hr/>';
	// 按位与
	var_dump($a & $b);
	/*
	 * 取出系统存储的结果进行与操作
	 * 5  00000101
	 * -5 11111011
	 * &  00000001   //最终结果
	 * 转换：判断符号位，0表示正数，1表示负数（补码）
	 */
