package discordjs;

import js.lib.Promise;
import js.node.events.EventEmitter;

@:jsRequire('discord.js', 'Client')
extern class Client extends EventEmitter<Client> {
	public var channels:ChannelManager;
	/**
	 * The user the bot is logged in as.
	 */
	public var user:User;
	/**
	 * Creates a new client.
	 * @param options 
	 */
	public function new(?options:ClientOptions):Void;
	/**
	 * Logs the client in, establishing a websocket connection to Discord.
	 * @param token 
	 * @return Promise<String>
	 */
	public function login(token:String):Promise<String>;
	/**
	 * 
	 * @param status 
	 * @param callback 
	 */
	public function on<T>(status:String, callback:T->Void):Void;
	/**
	 * Generates a link that can be used to invite the bot to a guild.
	 * @param permissions Permissions to request
	 * @return Promise<String>
	 */
	public function generateInvite(permissions:Array<String>):Promise<String>;
	/**
	 * Sets an interval that will be automatically cancelled if the client is destroyed.
	 * @param f 
	 * @param delay 
	 * @param args 
	 * @return js.node.Timers.Timeout
	 */
	public function setInterval(f:haxe.Constraints.Function,delay:Float,?args:Dynamic):js.node.Timers.Timeout;
}

typedef ClientOptions = {}
