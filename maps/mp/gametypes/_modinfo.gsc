
main()
{
if(isdefined(level.modinfo_text1)) level.modinfo_text1 destroy();
if(!isdefined(level.modinfo_text1))
{
level.modinfo_text1 = newHudElem();	
level.modinfo_text1.x = 320;
level.modinfo_text1.y = 465;
level.modinfo_text1.alignX = "center";
level.modinfo_text1.alignY = "middle";
level.modinfo_text1.hideWhenInMenu = true;
level.modinfo_text1.alpha = 0;
level.modinfo_text1.fontScale = 1.4;	
}
modinfo_text2[0] = "^2RAVANA ^1CYBER ^5GAMING ^1COMMUNITY";
modinfo_text2[1] = "^5Mod ^1By >>>[Ev-eS]MRTech<<<";
modinfo_text2[2] = "^2Admins >>>[Ev-eS]BLACKA & [Ev-eS]Apple<<<";
modinfo_text2[3] = "^4Sponcered By Evilz eSports";
for(;;)
{
for(mi=0;mi<4;mi++)
{
level.modinfo_text1 setText(modinfo_text2[mi]);
level.modinfo_text1 fadeOverTime(1);
level.modinfo_text1.alpha = 1;	
if(mi == 0) wait 10;
else wait 5;
level.modinfo_text1 fadeOverTime(1);
level.modinfo_text1.alpha = 0;
wait 1;
}
}
}
