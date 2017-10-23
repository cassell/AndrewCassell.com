<?php $this->layout('layout/layout', ['title' => $title]) ?>


<div class="container">
    <div class="blog-container">
        <h1>Blog, Presentations, and Articles</h1>
        <p>All Talks: <a href="https://speakerdeck.com/cassell">Speaker Deck</a></p>
        <hr>
            <ul class="list-of-blog-articles-and-talks">
                <?php /** @var \AndrewCassell\BlogArticle $article */
                foreach($entries as $article): ?>
                    <li><a href="<?= $article->getUrl() ?>"><?= $this->e($article->getTitle()) ?></a><br><small><?= $article->getDateFormatted("M j, Y") ?></small></li>
                <?php endforeach; ?>
            </ul>
    </div>
</div>
