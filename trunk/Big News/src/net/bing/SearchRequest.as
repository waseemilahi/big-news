/**
 * SearchRequest.as
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
    
	public class SearchRequest
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function SearchRequest() {}
            
		public var Version:String;
		public var Market:String;
		public var UILanguage:String;
		public var Query:String;
		public var AppId:String;
		public var Adult:net.bing.AdultOption;
		public var Latitude:Number;
		public var Longitude:Number;
		public var Radius:Number;
		public var Options:net.bing.ArrayOfSearchOption;
		public var Sources:net.bing.ArrayOfSourceType;
		public var Web:net.bing.WebRequest;
		public var Image:net.bing.ImageRequest;
		public var Phonebook:net.bing.PhonebookRequest;
		public var Video:net.bing.VideoRequest;
		public var News:net.bing.NewsRequest;
		public var MobileWeb:net.bing.MobileWebRequest;
		public var Translation:net.bing.TranslationRequest;
	}
}