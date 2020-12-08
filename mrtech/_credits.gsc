//
//───────────────────────────────────────────────────────────────────────────────────────────────────────
//─██████──────────██████─████████████████───██████████████─██████████████─██████████████─██████──██████─
//─██░░██████████████░░██─██░░░░░░░░░░░░██───██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██─
//─██░░░░░░░░░░░░░░░░░░██─██░░████████░░██───██████░░██████─██░░██████████─██░░██████████─██░░██──██░░██─
//─██░░██████░░██████░░██─██░░██────██░░██───────██░░██─────██░░██─────────██░░██─────────██░░██──██░░██─
//─██░░██──██░░██──██░░██─██░░████████░░██───────██░░██─────██░░██████████─██░░██─────────██░░██████░░██─
//─██░░██──██░░██──██░░██─██░░░░░░░░░░░░██───────██░░██─────██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██─
//─██░░██──██████──██░░██─██░░██████░░████───────██░░██─────██░░██████████─██░░██─────────██░░██████░░██─
//─██░░██──────────██░░██─██░░██──██░░██─────────██░░██─────██░░██─────────██░░██─────────██░░██──██░░██─
//─██░░██──────────██░░██─██░░██──██░░██████─────██░░██─────██░░██████████─██░░██████████─██░░██──██░░██─
//─██░░██──────────██░░██─██░░██──██░░░░░░██─────██░░██─────██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██─
//─██████──────────██████─██████──██████████─────██████─────██████████████─██████████████─██████──██████─
//───────────────────────────────────────────────────────────────────────────────────────────────────────

main()
{
	
	level.creditTime = 8;
	freezeall();
	mrtech2\_common::cleanScreen();

	wait 12;
	thread showCredit( "^1RAVANA ^2CYBER ^5GAMING ^4COMMUNITY", 2.4 );
	wait 1.2;
	thread showCredit( "^2<<<---Founder--->>>", 2.4 );
	wait 0.5;
	thread showCredit( "^1[Ev-eS]BLACKA", 1.8 );
	wait 1.2;
	thread showCredit( "^5<<<---Head Admins--->>>", 2.4 );
	wait 0.5;
	thread showCredit( "^1[Ev-eS]LoranZ", 1.8 );
	wait 0.5;
	thread showCredit( "^1[Ev-eS]Molly", 1.8 );
	wait 0.5;
	thread showCredit( "^4<<<---Admins--->>>", 2.4 );
	wait 1.2;
	thread showCredit( "^1[Ev-eS]MRTech", 1.8 );
	wait 0.5;
	thread showCredit( "^1[Ev-eS]Apple", 1.8 );
	wait 0.5;
	thread showCredit( "^1[Ev-eS]NightRaven", 1.8 );
	wait 0.5;
	thread showCredit( "^3<<<---Supporters--->>>", 2.4 );
	wait 0.5;
	thread showCredit( "^1[Evox]Amd & Kns", 1.8 );
	wait 0.5;
	thread showCredit( "^1[SF]Kaizer", 1.8 );
	wait 1.2;
	thread showCredit( "^5>>>>MODED BY [Ev-eS]MRTech<<<< ", 2.4 );
	wait 1.2;
	thread showCredit( "^1>>>>HOSTED BY [Ev-eS]Apple<<<<", 2.4 );
	wait 2.3;
	thread showCredit( "^2Powered By Evilz eSports", 2.8 );
    wait 1.6;
	thread showCredit( "^4Facebook Group ^0: ^3www.fb.com/groups/evilzesports/", 1.6 );
	wait 0.5;
	thread showCredit( "^5Visit For More details ^0: ^7www.evilzesports.ga", 1.6 );
	wait 2.2;
	thread showCredit( "^1Thanks for playing...", 2.4 );
	
	self thread addDisplay();
	wait 4;

	wait level.creditTime + 2;
}

addDisplay(){
	
	creditAdd = newHudElem();
	creditAdd.font = "objective";
	creditAdd.alignX = "center";
	creditAdd.alignY = "top";
	creditAdd.horzAlign = "center";
	creditAdd.vertAlign = "top";
	creditAdd setShader( "credit_logo", 400, 400 );
	creditAdd.x = 0;
	creditAdd.y = 540;
	creditAdd.sort = 2; //-3
	creditAdd.alpha = 1;
	creditAdd moveOverTime(level.creditTime);
	creditAdd.y = 30;
	creditAdd.foreground = true;
	wait level.creditTime;
	wait 5;
	creditAdd destroy();
}

showCredit( text, scale )
{
	end_text = newHudElem();
	end_text.font = "objective";
	end_text.fontScale = scale;
	end_text SetText(text);
	end_text.alignX = "center";
	end_text.alignY = "top";
	end_text.horzAlign = "center";
	end_text.vertAlign = "top";
	end_text.x = 0;
	end_text.y = 540;
	end_text.sort = -1; //-3
	end_text.alpha = 1;
	end_text.glowColor = (.1,.8,0);
	end_text.glowAlpha = 1;
	end_text moveOverTime(level.creditTime);
	end_text.y = -60;
	end_text.foreground = true;
	wait level.creditTime;
	end_text destroy();
}


neon()
{
	neon = addNeon( "^1www.ravanacod4.ga", 1.4 );
	while( 1 )
	{
		neon moveOverTime( 12 );
		neon.x = 800;
		wait 15;
		neon moveOverTime( 12 );
		neon.x = -800;
		wait 15;
	}
}

addNeon( text, scale )
{
	end_text = newHudElem();
	end_text.font = "objective";
	end_text.fontScale = scale;
	end_text SetText(text);
	end_text.alignX = "center";
	end_text.alignY = "top";
	end_text.horzAlign = "center";
	end_text.vertAlign = "top";
	end_text.x = -200;
	end_text.y = 8;
	end_text.sort = -1; //-3
	end_text.alpha = 1;
	//end_text.glowColor = (1,0,0.1);
	//end_text.glowAlpha = 1;
	end_text.foreground = true;
	return end_text;
}

freezeall()
{
	for(i=0;i<level.players.size;i++)
		level.players[i] freezecontrols(true);
}