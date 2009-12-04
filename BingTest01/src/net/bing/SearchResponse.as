/**
 * SearchResponse.as
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
    
	public class SearchResponse
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function SearchResponse() {}
            
		public var Version:String;
		public var Query:net.bing.Query;
		public var Spell:net.bing.SpellResponse;
		public var Web:net.bing.WebResponse;
		public var Image:net.bing.ImageResponse;
		public var RelatedSearch:net.bing.RelatedSearchResponse;
		public var Phonebook:net.bing.PhonebookResponse;
		public var Video:net.bing.VideoResponse;
		public var InstantAnswer:net.bing.InstantAnswerResponse;
		public var News:net.bing.NewsResponse;
		public var MobileWeb:net.bing.MobileWebResponse;
		public var Translation:net.bing.TranslationResponse;
		public var Errors:net.bing.ArrayOfError;
	}
}