<?php

if (!defined('IN_ECS'))
{
    die('Hacking attempt');
}

$checking_dirs = array(
                    'admin',
                    'cert',
                    'images',
                    'images/upload',
                    'images/upload/Image',
                    'images/upload/File',
                    'images/upload/Flash',
                    'images/upload/Media',
                    'data',
                    'data/afficheimg',
                    'data/brandlogo',
                    'data/cardimg',
                    'data/feedbackimg',
                    'data/packimg',
                    'data/sqldata',
                    'templates',
                    'templates/backup',
                    'templates/caches',
                    'templates/compiled',
                    'templates/compiled/admin'
                    );

?>