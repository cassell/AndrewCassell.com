<?php

class AndrewCassellPage extends HtmlPage
{
	function open()
	{
		$this->insertStyleSheet('/lib/vendor/frameworks/bootstrap/css/bootstrap.css');
		$this->insertStyleSheet('/css/main.css');
		$this->setHtmlTitle('Andrew Cassell - Web Application Developer - Herndon, Virginia');
		$this->printHtmlHeader();
		?>
		<div class="menu clearfix">
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
				<ul class="menu-list">
					<li><a href="/blog/">Blog</a></li>
					<li><a href="http://www.github.com/cassell">GitHub</a></li>
					<li><a href="http://www.twitter.com/andrewcassell">Twitter</a></li>
					<li><a href="http://www.facebook.com/andrewcassell">Facebook</a></li>
				</ul>
			</div>
		</div>
		<?php
	}
	
	function close()
	{
		$this->printHtmlFooter();
	}
	
	function printAnalytics()
	{
		
	}
	
	function getMeta()
	{
		return Array();
	}
	
}