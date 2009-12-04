/**
 * VideoResult.as
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
    
	public class VideoResult
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function VideoResult() {}
            
		public var Title:String;
		public var PlayUrl:String;
		public var SourceTitle:String;
		public var RunTime:uint;
		public var ClickThroughPageUrl:String;
		public var StaticThumbnail:net.bing.Thumbnail;
	}
}