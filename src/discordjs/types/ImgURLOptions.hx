package discordjs.types;

typedef ImgURLOptions = {
    /**
     * One of `webp`, `png`, `jpg`, `jpeg`, `gif`. If no format is provided, defaults to `webp`.
     */
    @:optional var format:String;
    /**
     * If true, the format will dynamically change to `gif` for animated avatars; the default is false.
     */
    @:optional var dynamic:Bool;
    /**
     * One of `16`, `32`, `64`, `128`, `256`, `512`, `1024`, `2048`, `4096`
     */
    @:optional var size:Int;
}