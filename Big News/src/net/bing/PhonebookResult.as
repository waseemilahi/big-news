/**
 * PhonebookResult.as
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
    
	public class PhonebookResult
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function PhonebookResult() {}
            
		public var Title:String;
		public var Url:String;
		public var Business:String;
		public var PhoneNumber:String;
		public var Address:String;
		public var City:String;
		public var StateOrProvince:String;
		public var CountryOrRegion:String;
		public var PostalCode:String;
		public var Latitude:Number;
		public var Longitude:Number;
		public var UniqueId:String;
		public var BusinessUrl:String;
		public var UserRating:Number;
		public var ReviewCount:uint;
		public var DisplayUrl:String;
	}
}