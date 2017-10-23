// JavaScript Document
// Solar Decathlon
// Energy Dashboard Site

// Author: Andrew Cassell
function layout()

{

	/************************************************************/
	/* Find Inner Screen Width & Height - Source From Internet */	
	var screenwidth;
	var screenheight;
	
	if (parseInt(navigator.appVersion)>3) {
	 if (navigator.appName=="Netscape") {
	  screenwidth = window.innerWidth;
	  screenheight = window.innerHeight;
	  screenheight = screenheight - 70;
	  screenwidth = screenwidth - 17;
	 }
	 if (navigator.appName.indexOf("Microsoft")!=-1) {
	  /*screenwidth = document.body.clientWidth;
	  screenheight = document.body.clientHeigth;*/
	  screenheight = document.documentElement.clientHeight;
	  screenwidth = document.documentElement.clientWidth;
	  screenheight = screenheight - 35;
	 }
	}

	/************************************************************/

	//Set Main Screen Frames

	var mainscreen;
	var mainscreenwidth;
	var mainscreenheight;
	var mainscreenfromleft;
	
	var left;
	var leftwidth;
	var leftheight;
	var lefttop;
	
	var right;
	var rightwidth;
	var rightheight;
	var righttop;
	var rightfromleft;
	
	
	mainscreen = document.getElementById("TheMainPanel");
	left = document.getElementById("TheLeftPanel");
	right = document.getElementById("TheRightPanel");
	
	mainscreenwidth = 954;
	mainscreenheight = 762;
	
	
	leftwidth = Math.ceil((screenwidth - mainscreenwidth)/2)
	rightwidth = screenwidth - mainscreenwidth - leftwidth;
		
	if(leftwidth <= 0)
		{
			leftwidth = 0;
			rightwidth = 0;
		}
		
	
	mainscreen.style.height = mainscreenheight + 'px';
	mainscreen.style.width = mainscreenwidth + 'px';
	mainscreen.style.top = 30 + 'px';
	mainscreen.style.left = leftwidth + 'px';
	
	left.style.left = 0 + 'px';
	left.style.top = 30 + 'px';
	left.style.width = (leftwidth) + 'px';
	left.style.height = mainscreenheight + 'px';
	
	right.style.left = 0 + 'px';
	right.style.top = 30 + 'px';
	right.style.width = (rightwidth) + 'px';
	right.style.height = mainscreenheight + 'px';
	right.style.left = leftwidth + mainscreenwidth + 'px';
	
	/************************************************************/
	// Individual Items
	
	var title;
	var menu;
	
	title = document.getElementById("TheTitleBar");
	menu = document.getElementById("TheMenuBar");
	
	
	title.style.left = 48 + 'px';
	title.style.top = 40 + 'px';
	menu.style.left = 48+'px';
	menu.style.top = 146 + 'px';
	
	/************************************************************/
	// After Resize Make Visible
	
	mainscreen.style.visibility = 'visible';
	left.style.visibility = 'visible';
	right.style.visibility = 'visible';
	title.style.visibility = 'visible';
	menu.style.visibility = 'visible';
	
	
	

}