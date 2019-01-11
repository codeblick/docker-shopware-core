<?php

$config = [
    'db' => [
        'username' => getenv('MYSQL_USER'),
        'password' => getenv('MYSQL_PASSWORD'),
        'dbname' => getenv('MYSQL_DATABASE'),
        'host' => getenv('MYSQL_HOST'),
        'port' => '3306',
    ]
];

if (getenv('SW_APP_ENV') === 'development') {
    $config['phpsettings'] = [
        'display_errors' => 1,
    ];

    $config['front'] = [
        'throwExceptions' => true,
        'showException' => true,
    ];
}

if (getenv('SW_CDN_URL') != '0') {
    $config['cdn'] = [
        'backend' => 'local',
        'adapters' => [
            'local' => [
                'type' => 'local',
                'mediaUrl' => getenv('SW_CDN_URL'),
                'path' => realpath(__DIR__ . '/../../../')
            ]
        ]
    ];
}

return $config;
