<?php $this->layout('layout/layout', ['title' => $title]) ?>


<div class="container">
    <div class="blog-container">
        <h1>Blog Articles, Talks, and Presentations</h1>
        <p>All Talks: <a href="https://speakerdeck.com/cassell">Speaker Deck</a></p>
        <?php foreach($entries as $year => $dates): ?>
           <h2><?= (int)$year ?></h2>
            <ul>
            <?php foreach($dates as $date => $articles): ?>
                <?php foreach($articles as $article): ?>
                    <li><a href="/blog/<?= (int)$year ?>/<?= $article["folder"] ?>/"><?= $article["title"] ?></a><small><?= date("M j",$date) ?></small></li>
                <?php endforeach; ?>
            <?php endforeach; ?>
            </ul>
        <?php endforeach; ?>
    </div>
</div>
