<?php


    /*
    * Create by PhpStorm
    * Author: Yan
    * Date: 2019/8/7
    * Time: 15:15
    * Features: 可变变量
    */

    // 可变变量

    // 定义两个变量
    $a = 'b';
    $b = 'bb';

    echo $$a;

 	// 1、找到$a，解析结果：b
	// 2、将前面的$符号与结果  b绑定：$b
	// 3、解析
 