<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/11/8 0008
 * Time: 9:29
 */
header('content-type:text/html;charset=utf-8');
use Workerman\Worker;
use Workerman\Lib\Timer;
require_once '../Workerman/Autoloader.php';
//$worker1 = new Worker('tcp://0.0.0.0:8585');
////设置4个进程
//$worker1->count = 4;
////每个进程启动后打印当前id
//$worker1->onWorkerStart = function ($worker1)
//{
//  echo 'worker1->id='.$worker1->id."\n";
//};

//$worker2 = new Worker('tcp://0.0.0.0:8686');
////设置4个进程
//$worker2->count = 2;
////每个进程启动后打印当前id
//$worker2->onWorkerStart = function ($worker2)
//{
////    echo 'worker2->id='.$worker2->id."\n";
//    if($worker2->id == 0)
//    {
//        Timer::add(1,function(){
//           echo "2个进程，只在0号进程上设置定时器\n";
//        });
//    }
//};
//
//Worker::runAll();


//$worker = new Worker('websocket://0.0.0.0:2000');
//// 进程启动时设置一个定时器，定时向所有客户端连接发送数据
//$worker->onWorkerStart = function($worker)
//{
//    // 定时，每10秒一次
//    Timer::add(2, function()use($worker)
//    {
//        // 遍历当前进程所有的客户端连接，发送当前服务器的时间
//        foreach($worker->connections as $connection)
//        {
//            $connection->send(time());
//        }
//    });
//};
//// 运行worker
//Worker::runAll();

// 假设服务端ip为127.0.0.1
//ws = new WebSocket("ws://172.16.1.187:8484");
//ws.onopen = function() {
//    alert("连接成功");
//    ws.send('tom');
//    alert("给服务端发送一个字符串：tom");
//};
//ws.onmessage = function(e) {
//    alert("收到服务端的消息：" + e.data);
//};


//Worker::$daemonize = true;
//// 所有的打印输出全部保存在/tmp/stdout.log文件中
//Worker::$stdoutFile = '/tmp/stdout.log';
//$worker = new Worker('text://0.0.0.0:8484');
//$worker->onWorkerStart = function($worker)
//{
//    echo "Worker start\n";
//
//};
//// 运行worker
//Worker::runAll();


$worker = new Worker('websocket://0.0.0.0:2000');
$worker->onConnect = function($connection)
{
    echo "new connection from ip " . $connection->getRemoteIp() . "\n";
};
$worker->onMessage = function($connection, $data)
{
    var_dump($data);
    $connection->send('receive success');
};
// 运行worker
Worker::runAll();
