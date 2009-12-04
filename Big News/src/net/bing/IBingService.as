
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package net.bing{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IBingService
    {
    	//Stub functions for the Search operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param Version
    	 * @param Market
    	 * @param UILanguage
    	 * @param Query
    	 * @param AppId
    	 * @param Adult
    	 * @param Latitude
    	 * @param Longitude
    	 * @param Radius
    	 * @param Options
    	 * @param Sources
    	 * @param Web
    	 * @param Image
    	 * @param Phonebook
    	 * @param Video
    	 * @param News
    	 * @param MobileWeb
    	 * @param Translation
    	 * @param parameters
    	 * @return An AsyncToken
    	 */
    	function search(parameters:SearchRequest):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function search_send():AsyncToken;
        
        /**
         * The search operation lastResult property
         */
        function get search_lastResult():SearchResponse;
		/**
		 * @private
		 */
        function set search_lastResult(lastResult:SearchResponse):void;
       /**
        * Add a listener for the search operation successful result event
        * @param The listener function
        */
       function addsearchEventListener(listener:Function):void;
       
       
        /**
         * The search operation request wrapper
         */
        function get search_request_var():Search_request;
        
        /**
         * @private
         */
        function set search_request_var(request:Search_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseBingService;
	}
}