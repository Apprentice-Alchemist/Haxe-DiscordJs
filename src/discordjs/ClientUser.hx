package discordjs;

import js.lib.Promise;
import discordjs.Presence.PresenceData;
import discordjs.Presence.PresenceStatusData;

@:jsRequire("discord.js","ClientUser")
extern class ClientUser extends User {
    public function setActivity(?name:String,?options:{
        var ?url:String;
        var ?type:String;
        var ?shardID:String;
    }):js.lib.Promise<Presence>;

    public function setPresence(presence:PresenceData):Promise<Presence>;

    public function setStatus(status:PresenceStatusData):Promise<Presence>;
}