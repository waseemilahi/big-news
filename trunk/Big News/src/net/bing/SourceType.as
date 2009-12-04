/**
 * SourceType.as
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
    
	public class SourceType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function SourceType() {}
            
		[Inspectable(category="Generated values", enumeration="Spell,Web,Image,RelatedSearch,Phonebook,Showtimes,Weather,Video,Ad,XRank,InstantAnswer,News,QueryLocation,MobileWeb,Translation", type="String")]
		public var _SourceType:String;public function toString():String
		{
			return _SourceType.toString();
		}
           		
	}
}