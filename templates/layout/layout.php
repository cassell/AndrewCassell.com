<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="cache-control" content="no-cache"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Andrew Cassell - Web Application Developer - Herndon, Virginia - United States of America<?= $title ? ' : ' . $this->e($title) : ''; ?></title>
    <link rel="stylesheet" href="<?= $this->asset('/assets/bootstrap/bootstrap-3.3.6-dist/css/bootstrap.min.css') ?>" type="text/css"/>
    <link rel="stylesheet" href="<?= $this->asset('/assets/css/main.css') ?>" type="text/css"/>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-16667504-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-16667504-1');
    </script>
</head>
<body onunload="">
<div id="menu">
    <div class="container">
        <a href="/"><img src="<?= $this->asset('/assets/img/mast@2x.png') ?>"></a>
        <ul id="menu-list" class="no-print">
            <li><a href="/blog/">Blog &amp; Talks</a></li>
            <li><a href="http://www.github.com/cassell">GitHub</a></li>
            <li><a href="http://www.twitter.com/alc277">Twitter</a></li>
            <li><a href="http://www.facebook.com/andrewcassell">Facebook</a></li>
        </ul>
    </div>
    <div class="clearfix"></div>
</div>

<?= $this->section('content') ?>

</body>
</html>