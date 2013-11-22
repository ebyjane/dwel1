<?php return array(
        'name' => 'dweling',
        'components' => array(
            'db' => array(
                'class' => 'CDbConnection',
                'connectionString' => 'mysql:host=localhost;dbname=dwel1',
                'emulatePrepare' => true,
                'username' => 'root',
                'password' => 'root',
                'charset' => 'utf8',
                'schemaCachingDuration' => '3600',
                'enableProfiling' => true,
            ),
            'cache' => array(
                'class' => 'CFileCache',
            ),
        ),
        'params' => array(
            'yiiPath' => 'C:/xampp/htdocs/dwel/framework/',
            'encryptionKey' => '6caa403d304708527a5875f117ff4bd3cdcc7e5e671760752c07d7c9eeaa0589b1a2a39098a5241e6f72f38a3cb06eef443dbea099864bd541ff0559',
        )
    );