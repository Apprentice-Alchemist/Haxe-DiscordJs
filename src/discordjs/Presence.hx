package discordjs;

import haxe.extern.EitherType;

@:jsRequire("discord.js","Presence")
extern class Presence {
    
}

typedef PresenceData = {
    var ?status:PresenceStatusData;
	var ?afk:Bool;
	var ?activity:{
		var ?application:EitherType<String,{var ?id:String;}>;
		var ?name:String;
		var ?type:ActivityType;
		var ?url:String;
	}
	var ?shardID:EitherType<Int,Array<Int>>;
}
enum abstract PresenceStatusData(String) {
	var ONLINE = "online";
	var IDLE = "idle";
	var INVISIBLE = "invisible";
	var DND = "dnd";
}
enum abstract ActivityType(String) {
	var PLAYING = "PLAYING";
	var STREAMING = "STREAMING";
	var LISTENING = "LISTENING";
	var WATCHING = "WATCHING";
	/**
	 * Only enabled for actual users.
	 */
	var CUSTOM_STATUS = "CUSTOM_STATUS";
}