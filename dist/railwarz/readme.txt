Revised text for linux by Qudos, thanks Jhan 

This readme is not part of the original railwarz 
but was added by me jhan28@netscape.net on jan27,2003
TMG is coded by Doug "RaVeN" Buckley

Extract to quake2 folder with "use folder names" option on

Command line I use is quake2 +set game railwarz +set dedicated [1 or 0] +exec railwarz.cfg

ROUTE MAKING [Is the same as for 3zb2]:

first: type "set chain 1" without the " in console
 
second: reload map

third: run all over map without killing yourself

fourth: type "sv savechain" in console.This will save route to the 
   nav folder I created[otherwise you would create your own nav folder]

fifth:"set chain o" and reload map to play with bots

NOTE:It is not necessary to create routes as bots can be played with-
out them

Spawning commands:
sv spb 1 [spawns 1 bot]
sv rmb 1 [removes 1 bot]

Below are some commands you will find in railwarz.cfg:

 ///////////
// TMGBots //
////////////
set use_bots "0"
set bot_num "0"
set bot_free_clients "5"
set chain "0" //for making routes.
set bot_insult "1"
set bot_chat "1"
set bot_camptime "30"
set bot_walkspeed "25"
set bot_runspeed "40"
set bot_duckpeed "20"
set bot_waterspeed "20"

Some explanations:

use_bots 1 [activates bots 0=off]
bot_num [indicates number of bots that will be on server at all times]
bot_free_clients [indicates client slots open for non bots] 
                 eg:bot_free_clients "5" means if your maxclients
                   setting is 8 then 3 bots would be on empty server
                  2 bots if 1 client 1 bot if 2 clients. 

OK you probably knew these things but what the hell.

NOTE:
set server_ip "##.##.##.## [your ip address here in railwarz cfg]

//////////////////////////////////
//  Specify RailWarz CTF server /
////////////////////////////////[set to 0 for deathmatch]
set railserver "0"              [set to 1 for instagib]


FINAL NOTE:railwarz is a ctf rail mod but I use it for deathmatch.
          Hopefully this readme will help you otherwise for ctf 
          use regular railwarz cfg that I will include in this folder
          or download railwarz from the railwarz site at 
          www.railwarz.com
	  
Get Railwarz stuff at    http://www.railwarz.com/files      

Any questions or problems with this readme EMAIL jhan28@netscape.net
or dynamite_viper@yahoo.com                