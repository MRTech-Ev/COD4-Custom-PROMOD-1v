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

init()
{
	level.msg = false;
	level.Geo = false;
	level.delay = 10;
	
	level thread advertisement();
	
	for(;;)
	{
		level waittill("connected",player);
		
		if(game["roundsplayed"] == 0)  // stops welcome spamming on map change
			return;
		
		if( isdefined( player.pers["player_welcomed"] ) ) // stops the welcome repeating each round
			return;
		player.pers["player_welcomed"] = true;  // player welcomed
		
		player thread geo();
	}
}

advertisement()
{	
	for(;;)
	{
		wait 6;
		if(level.Geo == true)
		{
			level waittill( "Geo_done" );
			if(level.msg == true)
			{
				level waittill( "msg_done" );
				level thread current_round();
				level hudmsg("^5Massage 1");
			}
			else
			{
				level thread current_round();
				level hudmsg("^5Massage 2");
			}
		}
		else if(level.Geo == false)
		{
			if(level.msg == true)
			{
				level waittill( "msg_done" );
				level thread current_round();
				level hudmsg("^5Massage 3");
			}
			else
			{
				level thread current_round();
				level hudmsg("^5Massage 4");
			}
		}
		
		wait level.delay;
		if(level.Geo == true)
		{
			level waittill( "Geo_done" );	
			if(level.msg == true)
			{
				level waittill( "msg_done" );
				level hudmsg("^5Massage 5");
			}
			else
				level hudmsg("^5Massage 6");
		}
		else if(level.Geo == false)
		{
			if(level.msg == true)
			{
				level waittill( "msg_done" );
				level hudmsg("^5Massage 7");
			}
			else
				level hudmsg("^5Massage 8");
		}
		wait level.delay;
		if(level.Geo == true)
		{
			level waittill( "Geo_done" );	
			if(level.msg == true)
			{
				level waittill( "msg_done" );
				level hudmsg("^5Massage 9");
			}
			else
				level hudmsg("^5Massage 10");
		}
		else if(level.Geo == false)
		{
			if(level.msg == true)
			{
				level waittill( "msg_done" );
				level hudmsg("^5Massage 11");
			}
			else
				level hudmsg("^5Massage 12");
		}
		wait level.delay;
		if(level.Geo == true)
		{
			level waittill( "Geo_done" );	
			if(level.msg == true)
			{
				level waittill( "msg_done" );
				level hudmsg("^5Massage 13");
			}
			else
				level hudmsg("^5Massage 14");
		}
		else if(level.Geo == false)
		{
			if(level.msg == true)
			{
				level waittill( "msg_done" );
				level hudmsg("^5Massage 15");
			}
			else
				level hudmsg("^5Massage 16");
		}
		wait level.delay;	
		if(level.Geo == true)
		{
			level waittill( "Geo_done" );	
			if(level.msg == true)
			{
				level waittill( "msg_done" );
				level hudmsg("^5Massage 17");
			}
			else
				level hudmsg("^5Massage 18");
		}
		else if(level.Geo == false)
		{
			if(level.msg == true)
			{
				level waittill( "msg_done" );
				level hudmsg("^5Massage 19");
			}
			else
				level hudmsg("^5Massage 20");
		}
		wait level.delay;
	}
}

geo()
{
	self endon("disconnect");
	location = self getgeolocation (2);
	if(level.msg == true)
	{
		level waittill( "msg_done" );
		level.Geo = true;
		level crazy\_advertisement::hudmsg("^1Welcome ^2" + self.name  + " ^1From ^2" + location);
		level.Geo = false;
		level notify ("Geo_done");
	}
	else if(level.msg == false)
	{
		level.Geo = true;
		level crazy\_advertisement::hudmsg("^1Welcome ^2" + self.name  + " ^1From ^2" + location);
		level.Geo = false;
		level notify ("Geo_done");
	}
}

current_round()
{
	wait 0.5;
	if(!isDefined(game["Current_Round"])) game["Current_Round"] = 0;
	level.Current_Round = game["Current_Round"];
	level.Current_Round++;
	level hudmsgtop("Round " + level.Current_Round);
}

hudmsgtop(text)
{
	msg = addTextHud( level, 750, 5, 1, "left", "middle", undefined, undefined, 1.4, 888 );
	msg SetText(text);
	msg.sort = 102;
	msg.foreground = 1;
	msg.archived = true;
	msg.alpha = 1;
	msg.fontScale = 1.5;
	msg.color = level.randomcolour;
	msg MoveHud(30,-1300);
	wait 15;
	msg destroy();
}

hudmsg(text)
{
	level.msg = true;
	msg = addTextHud( level, 750, 470, 1, "left", "middle", undefined, undefined, 1.4, 888 );
	msg SetText(text);
	msg.sort = 102;
	msg.foreground = 1;
	msg.archived = true;
	msg.alpha = 1;
	msg.fontScale = 1.5;
	msg.color = level.randomcolour;
	msg MoveHud(30,-1300);
	wait 15;
	msg destroy();
	level.msg = false;
	level notify ("msg_done");
}

MoveHud(time,x,y) {
    self moveOverTime(time);
    if(isDefined(x))
        self.x = x;
       
    if(isDefined(y))
        self.y = y;
}

addTextHud( who, x, y, alpha, alignX, alignY, horiz, vert, fontScale, sort ) {
	if( isPlayer( who ) )
		hud = newClientHudElem( who );
	else
		hud = newHudElem();

	hud.x = x;
	hud.y = y;
	hud.alpha = alpha;
	hud.sort = sort;
	hud.alignX = alignX;
	hud.alignY = alignY;
	if(isdefined(vert))
		hud.vertAlign = vert;
	if(isdefined(horiz))
		hud.horzAlign = horiz;		
	if(fontScale != 0)
		hud.fontScale = fontScale;
	hud.foreground = 1;
	hud.archived = 0;
	return hud;
}