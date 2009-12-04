/**
 * ImageResult.as
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
    
	public class ImageResult
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function ImageResult() {}
            
		public var Title:String;
		public var MediaUrl:String;
		public var Url:String;
		public var DisplayUrl:String;
		public var Width:uint;
		public var Height:uint;
		public var FileSize:uint;
		public var ContentType:String;
		public var Thumbnail:net.bing.Thumbnail;
	}
}