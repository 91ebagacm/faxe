package faxe;

@:keep
@:include('linc_faxe.h')
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('faxe'))

extern class Faxe
{
	@:native("linc::faxe::faxe_init")
	public static function fmod_init(numChannels:Int = 128):Void;

	@:native("linc::faxe::faxe_update")
	public static function fmod_update():Void;

	@:native("linc::faxe::faxe_load_bank")
	public static function fmod_load_bank(bankFilePath:String):Void;

	@:native("linc::faxe::faxe_unload_bank")
	public static function fmod_unload_bank(bankFilePath:String):Void;

	@:native("linc::faxe::faxe_load_sound")
	public static function fmod_load_sound(soundPath:String, looping:Bool = false, streaming:Bool = false):Void;

	@:native("linc::faxe::faxe_unload_sound")
	public static function fmod_unload_sound(bankFilePath:String):Void;

	@:native("linc::faxe::faxe_load_event")
	public static function fmod_load_event(eventName:String):Void;

	@:native("linc::faxe::faxe_play_event")
	public static function fmod_play_event(eventName:String):Void;

	@:native("linc::faxe::faxe_stop_event")
	public static function fmod_stop_event(eventName:String, forceStop:Bool):Void;
}