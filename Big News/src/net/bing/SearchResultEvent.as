/**
 * SearchResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package net.bing
{
	import mx.utils.ObjectProxy;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Typed event handler for the result of the operation
	 */
    
	public class SearchResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var Search_RESULT:String="Search_result";
		/**
		 * Constructor for the new event type
		 */
		public function SearchResultEvent()
		{
			super(Search_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:SearchResponse;
		public function get result():SearchResponse
		{
			return _result;
		}

		public function set result(value:SearchResponse):void
		{
			_result = value;
		}

		public function get headers():Object
		{
			return _headers;
		}

		public function set headers(value:Object):void
		{
			_headers = value;
		}
	}
}