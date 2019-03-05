<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/11/8 0008
 * Time: 15:34
 */
// 建立socket连接到内部推送端口
$client = stream_socket_client('tcp://127.0.0.1:2345', $errno, $errmsg, 1);
// 推送的数据，包含uid字段，表示是给这个uid推送
$data = array('uid'=>'uid1', 'percent'=>'88%');
// 发送数据，注意2345端口是Text协议的端口，Text协议需要在数据末尾加上换行符
fwrite($client, json_encode($data)."\n");
// 读取推送结果
echo fread($client, 8192);
