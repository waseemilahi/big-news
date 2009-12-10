/**
 * NewsResult.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package net.bing
{
	import flash.events.EventDispatcher;
	
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    [Bindable]
	public class NewsResult extends EventDispatcher
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function NewsResult() {}
            
		public var Title:String;
		public var Url:String;
		public var Source:String;
		public var Snippet:String;
		public var _Date:String;
		public var BreakingNews:uint;
		public var NewsCollections:net.bing.ArrayOfNewsCollection;
	}
}