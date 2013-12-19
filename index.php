<?php

require_once 'inc/config.php';

$page = new AndrewCassellPage();
$page->open();

?>
<style>
	.home
	{
		padding: 15px 0;
		text-align: center;
	}

	.home .me-photo
	{
		text-align: center;
	}

	.home .name
	{
		font-size: 3em;
	}

	.home .title
	{
		padding: 0 0 .6em 0;
		color: #666;
		font-size: 2em;
	}

	.home .me-photo img
	{
		display: inline-block;
		width: 160px;
		height: 160px;
		 border-radius: 100%;
		-o-border-radius: 100%;
		-webkit-border-radius: 100%;
		-moz-border-radius: 100%;
		opacity: .95;
	}

	.home .home-menu
	{
		list-style: none;
		text-align: center;
		padding: 0;
		margin: 0;
		padding-top: .9em;
		font-size: 2em;
	}

	.home .home-menu li
	{
		padding: 0;
		margin: 0;
		display: block;
	}
	
	.home .home-menu li a
	{
		padding: .2em 0;
		display: block;
	}
	
	.home .home-menu li:first-child a
	{
		padding: 0 0 .2em 0;
	}
	
	@media (min-width: 900px)
	{
		.home .name
		{
			font-size: 5em;
		}
		
		.home .title
		{
			font-size: 3em;
			padding: .1em 0 .5em 0;
		}
		
		.home .home-menu
		{
			font-size: 2.2em;
		}
		
		.home .me-photo img
		{
			width: 220px;
			height: 220px;
		}
	}
</style>

<div class="home clearfix">
	<div class="container">
		<div class="name">
			Andrew Cassell
		</div>
		<div class="title">
			Web Application Developer
		</div>
		<div class="me-photo clearfix">
			<img alt="Andrew Cassell" src="/img/andrew-cassell.jpg">
		</div>
		<ul class="home-menu">
			<li><a href="/blog/">Blog</a></li>
			<li><a href="http://www.github.com/cassell">GitHub</a></li>
			<li><a href="http://www.twitter.com/andrewcassell">Twitter</a></li>
			<li><a href="http://www.facebook.com/andrewcassell">Facebook</a></li>
		</ul>
	</div>
</div>
<?php



$page->close();
