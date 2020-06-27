package discordjs;

@:jsRequire("discord.js","ClientUser")
extern class ClientUser extends User {
    public function setActivity(?name:String,?options:{
        var ?url:String;
        var ?type:String;
        var ?shardID:String;
    }):js.lib.Promise<Presence>;
}