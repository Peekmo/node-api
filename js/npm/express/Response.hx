package js.npm.express;

import js.node.http.ServerResponse;
import js.support.Callback;

extern class Response 
extends ServerResponse {

	public var charset : String;
	public var locals : Dynamic;

	public function redirect(?status : Int , url : String) : Void;
  	
  	@:overload( function( code:Int , value : Dynamic ) : Void {} )
	function send( value : Dynamic) : Void;
	@:overload( function( code:Int , value : Dynamic ) : Void {} )
	function json( value : Dynamic) : Void;
	@:overload( function( code:Int , value : Dynamic ) : Void {} )
	function jsonp( value : Dynamic) : Void;

	function status( code : Int ) : Response;
	
	@:overload( function( values : Dynamic<String> ) : Response {} )
	function set( field : String , value : String ) : Response;

	function get( field : String ) : Null<String>;

	function cookie( name : String , value : Dynamic , ?options : {} ) : Response;

	function clearCookie( name : String, options : Dynamic ) : Response;

	function location( url : String ) : Response;

	function type( type : String ) : Response;

	function format( object : Dynamic<Void->Void> ) : Response;

	function attachment( ?filename : String ) : Response;

	function sendfile( path : String , ?options : {maxAge:Int,root:String} , ?fn : ?Dynamic->Void ) : Response;
	function download( path : String , ?filename : String , ?fn : ?Dynamic->Void ) : Response;

	function links( links : Dynamic<String> ) : Response;

	@:overload( function ( path : String , locals : {} , callback : Callback<String> ) : Void {} )
	@:overload( function ( path : String , locals : {} ) : Void {} )
	@:overload( function ( path : String ) : Void {} )
	function render( path : String , callback : Callback<String> ) : Void;

}
