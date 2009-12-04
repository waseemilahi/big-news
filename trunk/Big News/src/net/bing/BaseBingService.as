/**
 * BaseBingServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package net.bing
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	import mx.controls.treeClasses.DefaultDataDescriptor;
	import mx.utils.ObjectUtil;
	import mx.utils.ObjectProxy;
	import mx.messaging.events.MessageFaultEvent;
	import mx.messaging.MessageResponder;
	import mx.messaging.messages.SOAPMessage;
	import mx.messaging.messages.ErrorMessage;
   	import mx.messaging.ChannelSet;
	import mx.messaging.channels.DirectHTTPChannel;
	import mx.rpc.*;
	import mx.rpc.events.*;
	import mx.rpc.soap.*;
	import mx.rpc.wsdl.*;
	import mx.rpc.xml.*;
	import mx.rpc.soap.types.*;
	import mx.collections.ArrayCollection;
	
	/**
	 * Base service implementation, extends the AbstractWebService and adds specific functionality for the selected WSDL
	 * It defines the options and properties for each of the WSDL's operations
	 */ 
	public class BaseBingService extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseBingServiceService:WSDLService;
		private var BaseBingServicePortType:WSDLPortType;
		private var BaseBingServiceBinding:WSDLBinding;
		private var BaseBingServicePort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseBingServiceSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseBingService(destination:String=null, rootURL:String=null)
		{
			super(destination, rootURL);
			if(destination == null)
			{
				//no destination available; must set it to go directly to the target
				this.useProxy = false;
			}
			else
			{
				//specific destination requested; must set proxying to true
				this.useProxy = true;
			}
			
			if(rootURL != null)
			{
				this.endpointURI = rootURL;
			} 
			else 
			{
				this.endpointURI = null;
			}
			internal_schema = new BaseBingServiceSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
BaseBingServiceService = new WSDLService("BaseBingServiceService");
			BaseBingServicePort = new WSDLPort("BaseBingServicePort",BaseBingServiceService);
        	BaseBingServiceBinding = new WSDLBinding("BaseBingServiceBinding");
	        BaseBingServicePortType = new WSDLPortType("BaseBingServicePortType");
       		BaseBingServiceBinding.portType = BaseBingServicePortType;
       		BaseBingServicePort.binding = BaseBingServiceBinding;
       		BaseBingServiceService.addPort(BaseBingServicePort);
       		BaseBingServicePort.endpointURI = "http://api.bing.net:80/soap.asmx";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseBingServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var search:WSDLOperation = new WSDLOperation("Search");
				//input message for the operation
    	        requestMessage = new WSDLMessage("SearchRequest");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","parameters"),null,new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","SearchRequest")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://schemas.microsoft.com/LiveSearch/2008/03/Search";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","SearchRequest");
                
                responseMessage = new WSDLMessage("SearchResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","parameters"),null,new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","SearchResponse")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://schemas.microsoft.com/LiveSearch/2008/03/Search";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","SearchResponse");
			search.inputMessage = requestMessage;
	        search.outputMessage = responseMessage;
            search.schemaManager = this.schemaMgr;
            search.soapAction = "http://schemas.microsoft.com/LiveSearch/2008/03/Search/Search";
            search.style = "document";
            BaseBingServiceService.getPort("BaseBingServicePort").binding.portType.addOperation(search);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","NewsCollection"),net.bing.NewsCollection);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","SearchOption"),net.bing.SearchOption);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ImageResult"),net.bing.ImageResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","NewsSortOption"),net.bing.NewsSortOption);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfMobileWebResult"),net.bing.ArrayOfMobileWebResult);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfWebSearchTag"),net.bing.ArrayOfWebSearchTag);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","NewsArticle"),net.bing.NewsArticle);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfError"),net.bing.ArrayOfError);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","SourceType"),net.bing.SourceType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","WebRequest"),net.bing.WebRequest);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","AdultOption"),net.bing.AdultOption);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfVideoResult"),net.bing.ArrayOfVideoResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","Error"),net.bing.Error);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","MobileWebSearchOption"),net.bing.MobileWebSearchOption);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ImageRequest"),net.bing.ImageRequest);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfNewsArticle"),net.bing.ArrayOfNewsArticle);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfWebSearchOption"),net.bing.ArrayOfWebSearchOption);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfWebResult"),net.bing.ArrayOfWebResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","InstantAnswerResponse"),net.bing.InstantAnswerResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","PhonebookRequest"),net.bing.PhonebookRequest);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfNewsResult"),net.bing.ArrayOfNewsResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","TranslationRequest"),net.bing.TranslationRequest);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","PhonebookResponse"),net.bing.PhonebookResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ImageResponse"),net.bing.ImageResponse);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfPhonebookResult"),net.bing.ArrayOfPhonebookResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","VideoResponse"),net.bing.VideoResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","NewsResult"),net.bing.NewsResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","MobileWebResponse"),net.bing.MobileWebResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","WebResult"),net.bing.WebResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","Query"),net.bing.Query);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","RelatedSearchResponse"),net.bing.RelatedSearchResponse);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfInstantAnswerResult"),net.bing.ArrayOfInstantAnswerResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","SearchResponse"),net.bing.SearchResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","MobileWebResult"),net.bing.MobileWebResult);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfImageResult"),net.bing.ArrayOfImageResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","PhonebookSortOption"),net.bing.PhonebookSortOption);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfRelatedSearchResult"),net.bing.ArrayOfRelatedSearchResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","NewsResponse"),net.bing.NewsResponse);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfTranslationResult"),net.bing.ArrayOfTranslationResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","RelatedSearchResult"),net.bing.RelatedSearchResult);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfNewsCollection"),net.bing.ArrayOfNewsCollection);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfDeepLink"),net.bing.ArrayOfDeepLink);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","WebSearchTag"),net.bing.WebSearchTag);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","VideoRequest"),net.bing.VideoRequest);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","WebResponse"),net.bing.WebResponse);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfNewsRelatedSearch"),net.bing.ArrayOfNewsRelatedSearch);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","SearchRequest"),net.bing.SearchRequest);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","SpellResponse"),net.bing.SpellResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","WebSearchOption"),net.bing.WebSearchOption);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","VideoResult"),net.bing.VideoResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","TranslationResponse"),net.bing.TranslationResponse);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","MobileWebRequest"),net.bing.MobileWebRequest);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfString"),net.bing.ArrayOfString);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","TranslationResult"),net.bing.TranslationResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","VideoSortOption"),net.bing.VideoSortOption);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","PhonebookResult"),net.bing.PhonebookResult);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","InstantAnswerResult"),net.bing.InstantAnswerResult);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfMobileWebSearchOption"),net.bing.ArrayOfMobileWebSearchOption);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfSpellResult"),net.bing.ArrayOfSpellResult);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfSourceType"),net.bing.ArrayOfSourceType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","DeepLink"),net.bing.DeepLink);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","NewsRequest"),net.bing.NewsRequest);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","SpellResult"),net.bing.SpellResult);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","ArrayOfSearchOption"),net.bing.ArrayOfSearchOption);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","NewsRelatedSearch"),net.bing.NewsRelatedSearch);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://schemas.microsoft.com/LiveSearch/2008/03/Search","Thumbnail"),net.bing.Thumbnail);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param parameters
		 * @return Asynchronous token
		 */
		public function search(parameters:SearchRequest):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["parameters"] = parameters;
	            currentOperation = BaseBingServiceService.getPort("BaseBingServicePort").binding.portType.getOperation("Search");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
        /**
         * Performs the actual call to the remove server
         * It SOAP-encodes the message using the schema and WSDL operation options set above and then calls the server using 
         * an async invoker
         * It also registers internal event handlers for the result / fault cases
         * @private
         */
        private function call(operation:WSDLOperation,args:Object,token:AsyncToken,headers:Array=null):void
        {
	    	var enc:SOAPEncoder = new SOAPEncoder();
	        var soap:Object = new Object;
	        var message:SOAPMessage = new SOAPMessage();
	        enc.wsdlOperation = operation;
	        soap = enc.encodeRequest(args,headers);
	        message.setSOAPAction(operation.soapAction);
	        message.body = soap.toString();
	        message.url=endpointURI;
            var inv:AsyncRequest = new AsyncRequest();
            inv.destination = super.destination;
            //we need this to handle multiple asynchronous calls 
            var wrappedData:Object = new Object();
            wrappedData.operation = currentOperation;
            wrappedData.returnToken = token;
            if(!this.useProxy)
            {
            	var dcs:ChannelSet = new ChannelSet();	
	        	dcs.addChannel(new DirectHTTPChannel("direct_http_channel"));
            	inv.channelSet = dcs;
            }                
            var processRes:AsyncResponder = new AsyncResponder(processResult,faultResult,wrappedData);
            inv.invoke(message,processRes);
		}
        
        /**
         * Internal event handler to process a successful operation call from the server
         * The result is decoded using the schema and operation settings and then the events get passed on to the actual facade that the user employs in the application 
         * @private
         */
		private function processResult(result:Object,wrappedData:Object):void
           {
           		var headers:Object;
           		var token:AsyncToken = wrappedData.returnToken;
                var currentOperation:WSDLOperation = wrappedData.operation;
                var decoder:SOAPDecoder = new SOAPDecoder();
                decoder.resultFormat = "object";
                decoder.headerFormat = "object";
                decoder.multiplePartsFormat = "object";
                decoder.ignoreWhitespace = true;
                decoder.makeObjectsBindable=false;
                decoder.wsdlOperation = currentOperation;
                decoder.schemaManager = currentOperation.schemaManager;
                var body:Object = result.message.body;
                var stringResult:String = String(body);
                if(stringResult == null  || stringResult == "")
                	return;
                var soapResult:SOAPResult = decoder.decodeResponse(result.message.body);
                if(soapResult.isFault)
                {
	                var faults:Array = soapResult.result as Array;
	                for each (var soapFault:Fault in faults)
	                {
		                var soapFaultEvent:FaultEvent = FaultEvent.createEvent(soapFault,token,null);
		                token.dispatchEvent(soapFaultEvent);
	                }
                } else {
	                result = soapResult.result;
	                headers = soapResult.headers;
	                var event:ResultEvent = ResultEvent.createEvent(result,token,null);
	                event.headers = headers;
	                token.dispatchEvent(event);
                }
           }
           	/**
           	 * Handles the cases when there are errors calling the operation on the server
           	 * This is not the case for SOAP faults, which is handled by the SOAP decoder in the result handler
           	 * but more critical errors, like network outage or the impossibility to connect to the server
           	 * The fault is dispatched upwards to the facade so that the user can do something meaningful 
           	 * @private
           	 */
			private function faultResult(error:MessageFaultEvent,token:Object):void
			{
				//when there is a network error the token is actually the wrappedData object from above	
				if(!(token is AsyncToken))
					token = token.returnToken;
				token.dispatchEvent(new FaultEvent(FaultEvent.FAULT,true,true,new Fault(error.faultCode,error.faultString,error.faultDetail)));
			}
		}
	}

	import mx.rpc.AsyncToken;
	import mx.rpc.AsyncResponder;
	import mx.rpc.wsdl.WSDLBinding;
                
    /**
     * Internal class to handle multiple operation call scheduling
     * It allows us to pass data about the operation being encoded / decoded to and from the SOAP encoder / decoder units. 
     * @private
     */
    class PendingCall
    {
		public var args:*;
		public var headers:Array;
		public var token:AsyncToken;
		
		public function PendingCall(args:Object, headers:Array=null)
		{
			this.args = args;
			this.headers = headers;
			this.token = new AsyncToken(null);
		}
	}