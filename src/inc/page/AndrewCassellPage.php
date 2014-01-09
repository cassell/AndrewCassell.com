<?php

class AndrewCassellPage extends HtmlPage
{
	function open()
	{
		$this->insertStyleSheet('/lib/vendor/frameworks/bootstrap/css/bootstrap.css');
		$this->insertStyleSheet('/css/main.css');
		$this->printHtmlHeader();
		?>
		<div id="menu">
			<div class="container">
				<a href="/"><img src="/img/mast@2x.png"></a>
				<ul id="menu-list">
					<li><a href="/blog/">Blog</a></li>
					<li><a href="http://www.github.com/cassell">GitHub</a></li>
					<li><a href="http://www.twitter.com/andrewcassell">Twitter</a></li>
					<li><a href="http://www.facebook.com/andrewcassell">Facebook</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<?php
	}
	
	function close()
	{
		$this->printHtmlFooter();
	}
	
	function setHtmlTitle($val)
	{
		parent::setHtmlTitle("Andrew Cassell - " . $val);
	}
	
	function printAnalytics()
	{
		
	}
	
	function getMeta()
	{
		return Array();
	}
	
}