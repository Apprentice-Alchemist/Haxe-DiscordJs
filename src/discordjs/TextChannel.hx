package discordjs;

import discordjs.types.MessageOptions;
import haxe.extern.EitherType;
import js.lib.Promise;
import js.node.events.EventEmitter;

@:jsRequire('discord.js', 'Message')
extern class TextChannel extends GuildChannel implements TextBasedChannel {
	public var name:String;
	public var nsfw:Bool;
	public var viewable:Bool;
	public var lastMessage:Message;
	public var lastPinAt:Date;
	public var typing:Bool;
	public var typingCount:Int;
	public var messages:MessageManager;
	public function send(message:EitherType<String, MessageEmbed> = '', options:MessageOptions = null):Promise<Message>;
	public function startTyping(count:Int):Promise<Void>;
	public function stopTyping(force:Bool = false):Void;
	@:overload(function(messages:Int,filter_old:Bool):Promise<Collection<String,Message>>{})
	public function bulkDelete(messages:Collection<String, Message>, filter_old:Bool):Promise<Collection<String, Message>>;
}
