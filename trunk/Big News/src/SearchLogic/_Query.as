package SearchLogic
{
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.events.FaultEvent;
	
	import net.bing.AdultOption;
	import net.bing.ArrayOfSourceType;
	import net.bing.BingService;
	import net.bing.NewsRequest;
	import net.bing.NewsSortOption;
	import net.bing.SearchRequest;
	import net.bing.SearchResultEvent;
	
	public class _Query extends EventDispatcher
	{
		//permanent params
		[Bindable]
		public var query:String;

		[Bindable]
		public var category:String;

		[Bindable]
		public var dateTotal:uint;
		
		[Bindable]
		public var relevanceTotal:uint;
		
		[Bindable]
		public var lastQuery:ArrayCollection;
		
		[Bindable]
		public var lastSortByRelevance:Boolean;

		//results
		private var _datePages:ArrayCollection;
		private var _relevancePages:ArrayCollection;		
		
		//temporary params, used for searching
		private var _nextSortByRelevance:Boolean;
		private var _currentSortByRelevance:Boolean;
				
		//history
		private static var _urlHash:Dictionary = new Dictionary();
		private static var _queryHash:Dictionary = new Dictionary();
		private static var _history:ArrayCollection = new ArrayCollection();		
		
		public static const BUSINESS:String = "rt_business";
		public static const ENTERTAINMENT:String = "rt_entertainment";
		public static const HEALTH:String = "rt_Health";
		public static const POLITICS:String = "rt_Political";
		public static const SCIENTIFIC:String = "rt_Scientific";
		public static const SPORTS:String = "rt_Sports";
		public static const UNITED_STATES:String = "rt_US";
		public static const WORLD:String = "rt_World";
		public static const LOCAL:String = "rt_Local ";
		public static const SCIENCE_AND_TECH:String = "rt_ScienceAndTechnology";
		
		/**
		 * Creates a new query object given a query string and a category
		 * 
		 * @param query:String the query string to search for
		 * @param category:String the category to search within.  Can only be one of the static.  
		 * @throws Error if the category is invalid
		 * 
		 **/
		private function _Query()
		{
			lastQuery = new ArrayCollection();
		}
		
		
		this.
		public function getQuery(query:String, category:String):_Query
		{
			var index:String = query + category;
			
			var queryIndex:Number = _queryHash[index];
			if(queryIndex != null)
				_history.se
			else
		}
		
		public function setupRequest():SearchRequest
		{
			var adult:AdultOption = new AdultOption();
			var sortOption:NewsSortOption = new NewsSortOption();
			var newsRequest:NewsRequest = new NewsRequest();
			var request:SearchRequest = new SearchRequest();
			
			
			
			var offset:int = 0;
			var nextSearch:ArrayCollection;
			nextSearch = _nextSortByRelevance ? _relevancePages : _datePages; 
			
			
			newsRequest.Offset = offset;
			newsRequest.Count = 15;
			
			sortOption._NewsSortOption = _nextSortByRelevance ? "Relevance" : "Date";
			newsRequest.SortBy = sortOption;
			newsRequest.Category = _category;
			request.News = newsRequest;
			
			request.Query = query;

			adult._AdultOption= "Strict";
			request.Adult = adult;

			request.Latitude = 40.77; //new york methinks
			request.Longitude = 73.98;
			request.Radius = 250;

			request.AppId = "8FE9AA6D693C08E68F43A1AF8DECCFB092EA54A3";
			request.Market = "en-us";
			
			
			
			request.Sources = new ArrayOfSourceType(["News"]);
			return request;
		}
		
		private static var _searching:Boolean = false;
		/**
		 * Actually executes the search.  Add an event listener before this.  
		 */
		public function doSearch():void
		{		
				if(_searching)
				{
					Alert.show("can only perform one query at a time");
					return;
				}
				
				_searching = true;
				var request:SearchRequest = setupRequest();
								
				var bing:BingService = new BingService();
				bing.addEventListener(SearchResultEvent.Search_RESULT, searchResults);
				bing.addEventListener(FaultEvent.FAULT, searchError);
				bing.search(request);
		}
		
		
		
		private function searchResults(event:SearchResultEvent):void
		{
			var workingArray:ArrayCollection = lastSortByRelevance ? _relevancePages : _datePages;
			var fail:Boolean = false; 
			
			if(event.result.News == null || event.result.News.Results == null)
				fail = true;
			else
			{
				lastQuery = event.result.News.Results;
				historyData.addItemAt(this, 0);
//				history.selectedIndex = 0; need to move this.  
				Application.application.searchbar.runningTotal = event.result.News.Total;
									
					list.dataProvider = resp.News.Results;
							
							pageNumber.text = "Page " + Application.application.searchbar.pageCount + " of "+ Math.ceil( event.result.News.Total/15);
							
							for (var i:int = 0; i < resp.News.Results.length; i++)
							{
								var nr:NewsResult = resp.News.Results.getNewsResultAt(i);
								if (urlHash[nr.Url] == undefined)
								{
									urlHash[nr.Url] = new ArrayCollection();
									//Create a special Object to hold the NewsResult,
									//but also it's parent, which is a SearchResponse.
									//This allows the program to use the previous
									//search results.
									var obj:Object = new Object();
									obj.parent = resp;
									obj.newsresult = nr;
									ArrayCollection(urlHash[nr.Url]).addItem(obj);
								}
								else
								{
									ArrayCollection(urlHash[nr.Url]).addItem(nr);
								}
							}
						}
						else {
							Alert.show("The Result Array is Empty!!");
							pageNumber.text = "Page " + "1" + " of "+ "1";
						}
						
					}
					else { 
						Alert.show("Search object is NULL!!");
						pageNumber.text = "Page " + "1" + " of "+ "1";
					}
				
				}

			_searching = false;
		}
		
		private function searchError(event:FaultEvent):void
		{
			_searching = false;	
		}
	}
}