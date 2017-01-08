/***************
 *Button Events*
 ***************/
 
function buttonEvent1(e:MouseEvent):void{
	if (shiftHeld) {
		if (inBag == true) {
			itemMove(1);
		}
	}
	else {
		buttonChoice = 1;
		hideUpDown();
		doListen();
	}
}
function buttonEvent2(e:MouseEvent):void{
	if (shiftHeld) {
		if (inBag == true) {
			itemMove(2);
		}
	}
	else {
		buttonChoice = 2;
		hideUpDown();
		doListen();
	}
}
function buttonEvent3(e:MouseEvent):void{
	if (shiftHeld) {
		if (inBag == true) {
			itemMove(3);
		}
	}
	else {
		buttonChoice = 3;
		hideUpDown();
		doListen();
	}
}
function buttonEvent4(e:MouseEvent):void{
	if (shiftHeld) {
		if (inBag == true) {
		}
	}
	else {
		buttonChoice = 4;
		hideUpDown();
		doListen();
	}
}
function buttonEvent5(e:MouseEvent):void{	
	if (shiftHeld) {
		if (inBag == true) {
			itemMove(5);
		}
	}
	else {
		buttonChoice = 5;
		hideUpDown();
		doListen();
	}
}
function buttonEvent6(e:MouseEvent):void{
	if (shiftHeld) {
		if (inBag == true) {
			itemMove(6);
		}
	}
	else {
		buttonChoice = 6;
		hideUpDown();
		doListen();
	}
}
function buttonEvent7(e:MouseEvent):void{
	if (shiftHeld) {
		if (inBag == true) {
			itemMove(7);
		}
	}
	else {
		buttonChoice = 7;
		hideUpDown();
		doListen();
	}
}
function buttonEvent8(e:MouseEvent):void{
	if (shiftHeld) {
		if (inBag == true) {
		}
	}
	else {
		buttonChoice = 8;
		hideUpDown();
		doListen();
	}
}
function buttonEvent9(e:MouseEvent):void{
	if (shiftHeld) {
		if (inBag == true) {
			itemMove(9);
		}
	}
	else {
		buttonChoice = 9;
		hideUpDown();
		doListen();
	}
}
function buttonEvent10(e:MouseEvent):void{
	if (shiftHeld) {
		if (inBag == true) {
			itemMove(10);
		}
	}

	else {
		buttonChoice = 10;
		hideUpDown();
		doListen();
	}
}
function buttonEvent11(e:MouseEvent):void{
	if (shiftHeld) {
		if (inBag == true) {
			itemMove(11);
		}
	}
	else {
		buttonChoice = 11;
		hideUpDown();
		doListen();
	}
}
function buttonEvent12(e:MouseEvent):void{
	if (shiftHeld) {
		if (inBag == true) {
		}
	}
	else {
		buttonChoice = 12;
		hideUpDown();
		doListen();
	}
}

function side1Event(e:MouseEvent):void{ sideEvent(1); }
function side2Event(e:MouseEvent):void{ sideEvent(2); }
function side3Event(e:MouseEvent):void{ sideEvent(3); }
function side4Event(e:MouseEvent):void{ sideEvent(4); }
function side5Event(e:MouseEvent):void{ sideEvent(5); }
function side6Event(e:MouseEvent):void{ sideEvent(6); }
function side7Event(e:MouseEvent):void{ sideEvent(7); }
function side8Event(e:MouseEvent):void{ sideEvent(8); }

function sideEvent(which:int):void{
	sideFocus = which;
	if (which == 1) { appearanceGo(); }
	if (which == 2) { detailedStats(); }
	if (which == 3) { detailedStatuses(); }
	if (which == 4) { detailedHelp(); }
	if (which == 5) { detailedLevels(); }
	if (which == 6) { detailedGear(); }
	if (which == 7) { detailedTitles(); }
	if (which == 8) { detailedCredits(); }	
}

function option1Event(e:MouseEvent):void{
	toggleTheme();
}
function option2Event(e:MouseEvent):void{
	fontSizeDown();
}
function option3Event(e:MouseEvent):void{
	fontSizeReset();
}
function option4Event(e:MouseEvent):void{
	fontSizeUp();
}
function option5Event(e:MouseEvent):void{
	toggleBold();
}
function option6Event(e:MouseEvent):void{
	toggleColor();
}
function option7Event(e:MouseEvent):void{
	toggleSide();
}

function keysUp(e:KeyboardEvent):void{
  if (!e.shiftKey) { shiftHeld = false; }
}
function hotKeys(e:KeyboardEvent):void{
	if (!shiftHeld) {
		if ((e.keyCode == 103 || e.keyCode == 81) && Choice1.visible == true) {
			buttonChoice = 1;
			hideUpDown();
			doListen();
		}
		if ((e.keyCode == 104 || e.keyCode == 87) && Choice2.visible == true) {
			buttonChoice = 2;
			hideUpDown();
			doListen();
		}
		if ((e.keyCode == 105 || e.keyCode == 69) && Choice3.visible == true) {
			buttonChoice = 3;
			hideUpDown();
			doListen();
		}
		if ((e.keyCode == 109 || e.keyCode == 82) && Choice4.visible == true) {
			buttonChoice = 4;
			hideUpDown();
			doListen();
		}
		if ((e.keyCode == 100 || e.keyCode == 65) && Choice5.visible == true) {
			buttonChoice = 5;
			hideUpDown();
			doListen();
		}
		if ((e.keyCode == 101 || e.keyCode == 83) && Choice6.visible == true) {
			buttonChoice = 6;
			hideUpDown();
			doListen();
		}
		if ((e.keyCode == 102 || e.keyCode == 68) && Choice7.visible == true) {
			buttonChoice = 7;
			hideUpDown();
			doListen();
		}
		if ((e.keyCode == 107 || e.keyCode == 70) && Choice8.visible == true) {
			buttonChoice = 8;
			hideUpDown();
			doListen();
		}
		if ((e.keyCode == 97 || e.keyCode == 90) && Choice9.visible == true) {
			buttonChoice = 9;
			hideUpDown();
			doListen();
		}
		if ((e.keyCode == 98 || e.keyCode == 88) && Choice10.visible == true) {
			buttonChoice = 10;
			hideUpDown();
			doListen();
		}
		if ((e.keyCode == 99 || e.keyCode == 67) && Choice11.visible == true) {
			buttonChoice = 11;
			hideUpDown();
			doListen();
		}
		if ((e.keyCode == 13 || e.keyCode == 86) && Choice12.visible == true) {
			buttonChoice = 12;
			hideUpDown();
			doListen();
		}
	}

	if (e.keyCode == 85 && showSide == true) { sideEvent(1); }
	else if (e.keyCode == 85 && showSide == false && appearanceText.visible == true) { appearanceGo();	}
	if (e.keyCode == 73 && showSide == true) { sideEvent(2); }
	if (e.keyCode == 79 && showSide == true) { sideEvent(3); }
	if (e.keyCode == 80 && showSide == true) { sideEvent(4); }
	if (e.keyCode == 72 && showSide == true) { sideEvent(5); }
	if (e.keyCode == 74 && showSide == true) { sideEvent(6); }
	if (e.keyCode == 75 && showSide == true) { sideEvent(7); }
	if (e.keyCode == 76 && showSide == true) { sideEvent(8); }

	if (e.keyCode == 37) { toggleTheme();	}
	if (e.keyCode == 38) { fontSizeUp();	}
	if (e.keyCode == 39) { toggleColor();	}
	if (e.keyCode == 40) { fontSizeDown();	}
	if (e.keyCode == 17) { fontSizeReset();	}
	if (e.keyCode == 190 && Option7.visible == true) { toggleSide(); }
	if (e.keyCode == 191) { toggleBold();	}
	

	if (e.keyCode == 113 && saveGame.visible == true) {	saveGo(); }
	if (e.keyCode == 115 && loadGame.visible == true) {	loadGo(); }
	if (e.keyCode == 8 && newGame.visible == true) { newGameGo(); }
	//if (e.keyCode == 73 && Choice12.visible == true) { invertGo(); }
	if (e.shiftKey) { shiftHeld = true; }
	
	if (inBag == true) {
		if (shiftHeld) {
			if ((e.keyCode == 103 || e.keyCode == 81) && Choice1.visible == true) {
				itemMove(1);
			}
			if ((e.keyCode == 104 || e.keyCode == 87) && Choice2.visible == true) {
				itemMove(2);
			}
			if ((e.keyCode == 105 || e.keyCode == 69) && Choice3.visible == true) {
				itemMove(3);
			}
			if ((e.keyCode == 100 || e.keyCode == 65) && Choice5.visible == true) {
				itemMove(5);
			}
			if ((e.keyCode == 101 || e.keyCode == 83) && Choice6.visible == true) {
				itemMove(6);
			}
			if ((e.keyCode == 102 || e.keyCode == 68) && Choice7.visible == true) {
				itemMove(7);
			}
			if ((e.keyCode == 97 || e.keyCode == 90) && Choice9.visible == true) {
				itemMove(9);
			}
			if ((e.keyCode == 98 || e.keyCode == 88) && Choice10.visible == true) {
				itemMove(10);
			}
			if ((e.keyCode == 99 || e.keyCode == 67) && Choice11.visible == true) {
				itemMove(11);
			}
		}
	}
}

function appearance(e:MouseEvent):void { appearanceGo(); }
function saveG(e:MouseEvent):void { saveGo(); }
function loadG(e:MouseEvent):void { loadGo(); }
//function invertC(e:MouseEvent):void { invertGo(); }
function newGameStart(e:MouseEvent):void { newGameGo(); }