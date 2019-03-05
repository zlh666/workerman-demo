<?php
use Workerman\Worker;
require_once '../Workerman/Autoloader.php';

$worker = new Worker('TextTransfer://0.0.0.0:8333');
// 保存文件到tmp下
$worker->onMessage = function($connection, $data)
{
    $save_path = '/tmp/'.$data['file_name'];
    file_put_contents($save_path, $data['file_data']);
    $connection->send("upload success. save path $save_path");
};

Worker::runAll();