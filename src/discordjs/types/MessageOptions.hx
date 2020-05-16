package discordjs.types;

import haxe.extern.EitherType;

typedef MessageOptions = {
	@:optional var tts:Bool;
	@:optional var nonce:String;
	@:optional var content:String;
	@:optional var reply:String;
	// @:optional var embed:{};
	// @:optional var allowedMentions:{};
	@:optional var disableMentions:DisableMentionsType;
	@:optional var files:Array<EitherType<FileOptions,js.node.buffer.Buffer>>;
	@:optional var code:EitherType<String, Bool>;
}
typedef FileOptions = {
	@:optional var name:String;
	@:optional var attachment:BufferResolvable;
}
typedef BufferResolvable = EitherType<String,js.node.buffer.Buffer>;
enum abstract DisableMentionsType(String) {
	var all;
	var none;
	var everyone;
}
