<?php


	/*
	 * Create by PhpStorm
	 * Author: Yan
	 * Date: 2019/8/16
	 * Time: 13:30
	 * Features: 有关数学的函数
	 */


	echo max(1, 3, 5, 6, 7);  // 7
	echo max(array(2, 4, 5)); // 5

	// When 'hello' is cast as integer it will be 0. Both the parameters are equally
	// long, so the order they are given in determines the result
	echo max(0, 'hello');     // 0
	echo max('hello', 0);     // hello

	echo max('42', 3); // '42'

	// Here 0 > -1, so 'hello' is the return value.
	echo max(-1, 'hello');    // hello

	// With multiple arrays of different lengths, max returns the longest
	$val = max(array(2, 2, 2), array(1, 1, 1, 1)); // array(1, 1, 1, 1)

	// 对多个数组，max 从左向右比较。
	// 因此在本例中：2 == 2，但 4 < 5
	$val = max(array(2, 4, 8), array(2, 5, 7)); // array(2, 5, 7)

	// 如果同时给出数组和非数组作为参数，则总是将数组视为
	// 最大值返回
	$val = max('string', array(2, 5, 7), 42);   // array(2, 5, 7)

	echo '<hr>';

	echo min(2, 3, 1, 6, 7);  // 1
	echo min(array(2, 4, 5)); // 2

	echo min(0, 'hello');     // 0
	echo min('hello', 0);     // hello
	echo min('hello', -1);    // -1

	// 对多个数组，min 从左向右比较。
	// 因此在本例中：2 == 2，但 4 < 5
	$val = min(array(2, 4, 8), array(2, 5, 1)); // array(2, 4, 8)

	// 如果同时给出数组和非数组作为参数，则不可能返回数组，因为
	// 数组被视为最大的
	$val = min('string', array(2, 5, 7), 42);   // string

	echo '<hr>';

	echo rand() . "\n";
	echo rand() . "\n";

	echo rand(5, 15);

	echo '<hr>';
	echo mt_rand() . "\n";
	echo mt_rand() . "\n";

	echo mt_rand(5, 15);

	echo '<hr>';
	echo round(3.4);         // 3
	echo round(3.5);         // 4
	echo round(3.6);         // 4
	echo round(3.6, 0);      // 4
	echo round(1.95583, 2);  // 1.96
	echo round(1241757, -3); // 1242000
	echo round(5.045, 2);    // 5.05
	echo round(5.055, 2);    // 5.06

	echo '<hr>';
	echo ceil(4.3);    // 5
	echo ceil(9.999);  // 10
	echo ceil(-3.14);  // -3

	echo '<hr>';
	echo floor(4.3);   // 4
	echo floor(9.999); // 9
	echo floor(-3.14); // -4

	echo '<hr>';
	var_dump(pow(2, 8)); // int(256)
	echo pow(-1, 20); // 1
	echo pow(0, 0); // 1

	echo pow(-1, 5.5); // PHP >4.0.6  NAN
	echo pow(-1, 5.5); // PHP <=4.0.6 1.#IND

	echo '<hr>';
	$abs = abs(-4.2); // $abs = 4.2; (double/float)
	$abs2 = abs(5);   // $abs2 = 5; (integer)
	$abs3 = abs(-5);  // $abs3 = 5; (integer)
	echo $abs, $abs2, $abs3;

	echo '<hr>';
	// Precision depends on your precision directive
	echo sqrt(9); // 3
	echo sqrt(10); // 3.16227766 ...
 
 
 