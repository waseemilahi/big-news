/**
 * BingServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:BingService= new BingService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addSearchEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.Search(myparameters,myVersion,myMarket,myUILanguage,myQuery,myAppId,myAdult,myLatitude,myLongitude,myRadius,myOptions,mySources,myWeb,myImage,myPhonebook,myVideo,myNews,myMobileWeb,myTranslation);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="net.bing.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:BingService id="myService">
  *   <srv:Search_request_var>
  *		<srv:Search_request parameters=myValue,Version=myValue,Market=myValue,UILanguage=myValue,Query=myValue,AppId=myValue,Adult=myValue,Latitude=myValue,Longitude=myValue,Radius=myValue,Options=myValue,Sources=myValue,Web=myValue,Image=myValue,Phonebook=myValue,Video=myValue,News=myValue,MobileWeb=myValue,Translation=myValue/>
  *   </srv:Search_request_var>
  * </srv:BingService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.Search_send()" />
  */
package net.bing
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation Search completes with success
     * and returns some data
     * @eventType SearchResultEvent
     */
    [Event(name="Search_result", type="net.bing.SearchResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class BingService extends EventDispatcher implements IBingService
	{
    	private var _baseService:BaseBingService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function BingService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseBingService(destination,rootURL);
        }
        
		//stub functions for the Search operation
          

        /**
         * @see IBingService#Search()
         */
        public function search(parameters:SearchRequest):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.search(parameters);
            _internal_token.addEventListener("result",_Search_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IBingService#Search_send()
		 */    
        public function search_send():AsyncToken
        {
        	return search(_Search_request.parameters);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _Search_request:Search_request;
		/**
		 * @see IBingService#Search_request_var
		 */
		[Bindable]
		public function get search_request_var():Search_request
		{
			return _Search_request;
		}
		
		/**
		 * @private
		 */
		public function set search_request_var(request:Search_request):void
		{
			_Search_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _search_lastResult:SearchResponse;
		[Bindable]
		/**
		 * @see IBingService#Search_lastResult
		 */	  
		public function get search_lastResult():SearchResponse
		{
			return _search_lastResult;
		}
		/**
		 * @private
		 */
		public function set search_lastResult(lastResult:SearchResponse):void
		{
			_search_lastResult = lastResult;
		}
		
		/**
		 * @see IBingService#addSearch()
		 */
		public function addsearchEventListener(listener:Function):void
		{
			addEventListener(SearchResultEvent.Search_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _Search_populate_results(event:ResultEvent):void
		{
			var e:SearchResultEvent = new SearchResultEvent();
		            e.result = event.result as SearchResponse;
		                       e.headers = event.headers;
		             search_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see IBingService#getWebService()
		 */
		public function getWebService():BaseBingService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addBingServiceFaultEventListener(listener:Function):void
		{
			addEventListener("fault",listener);
		}
		
		/**
		 * Internal function to re-dispatch the fault event passed on by the base service implementation
		 * @private
		 */
		 
		 private function throwFault(event:FaultEvent):void
		 {
		 	dispatchEvent(event);
		 }
    }
}
