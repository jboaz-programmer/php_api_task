<!DOCTYPE html>
<html lang="eng">
    <head>
    <meta charset="UTF-8">
    <title>laravel</title>
</head>
<body>
    <div>
        <?php
        if(DB::connection()->getpdo()){
            echo 'Successfully connected to DB';
        }
        ?>
</div>
</body>
    </html>