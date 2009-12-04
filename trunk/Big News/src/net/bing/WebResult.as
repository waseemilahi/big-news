/**
 * WebResult.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package net.bing
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class WebResult
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function WebResult() {}
            
		public var Title:String;
		public var Description:String;
		public var Url:String;
		public var CacheUrl:String;
		public var DisplayUrl:String;
		public var DateTime:String;
		public var SearchTags:net.bing.ArrayOfWebSearchTag;
		public var DeepLinks:net.bing.ArrayOfDeepLink;
	}
}