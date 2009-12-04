/**
 * VideoRequest.as
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
    
	public class VideoRequest
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function VideoRequest() {}
            
		public var Offset:uint;
		public var Count:uint;
		public var Filters:net.bing.ArrayOfString;
		public var SortBy:net.bing.VideoSortOption;
	}
}