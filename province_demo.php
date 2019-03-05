<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/1 0001
 * Time: 9:52
 */

use Workerman\Worker;
require_once __DIR__ . '/Workerman/Autoloader.php';
require_once __DIR__ . '/vendor/autoload.php';

// 注意：这里与上个例子不同，使用的是websocket协议
$ws_worker = new Worker("websocket://0.0.0.0:2000");

// 启动4个进程对外提供服务
//$ws_worker->count = 4;

$ws_worker->onWorkerStart = function($ws_worker)
{
    //每个子进程启动时的回调函数
    //可在此发生数据库连接
//    echo "Worker starting...\n";
    global $db;
    $db = new \Workerman\MySQL\Connection('localhost', '3306', 'root', 'root', 'mytest');
};

// 当收到客户端发来的数据后返回hello $data给客户端
$ws_worker->onMessage = function($connection, $data)
{
    // 向客户端发送hello $data
//    $connection->send('hello ' . $data);

    // 通过全局变量获得db实例
    global $db;

    while (true){
        $data = $db->query("SELECT id,orderId FROM `v9_order` WHERE payStatus=99");
        $num = count($data);
        if ($num==0) continue;
        foreach ($data as $v) {
            $connection->send("有人下单了，订单号：".$v['orderId']);
            $db->query("UPDATE `v9_order` SET `payStatus` = 1 WHERE id={$v['id']}");
        }
        sleep(2);
    }
};

// 运行worker
Worker::runAll();