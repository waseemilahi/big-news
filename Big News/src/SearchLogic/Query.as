package SearchResults
{
	import flash.events.EventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.events.FaultEvent;
	
	import net.bing.AdultOption;
	import net.bing.NewsRequest;
	import net.bing.NewsSortOption;
	import net.bing.SearchRequest;
	import net.bing.SearchResultEvent;
	
	public class Query extends EventDispatcher
	{
		//permanent params
		private var _query:String;
		private var :String;
		
		//temporary params
		private var _nextSortByReleveance:Boolean;
		private var _currentSortByRelevance:Boolean;
		
		
		
		//results
		private var _datePages:ArrayCollection;
		private var _relevancePages:ArrayCollection;		
		
		public function set query(query:String):void
		{
			if(_query == null)
				_query = query;
			else
				trace("can't set query ("+_query+") twice");
		}
		
		public function get query():String
		{
			return _query;
		}
		
		public function set category(category:String):void
		{
			if( == null)
				 = category;
			else
				trace("can't set category ("++") twice");
		}
		
		public function get category():void
		{
			return ;
		}
		
		[Bindable]
		public static var urlHash:Dictionary = new Dictionary();
		
		[Bindable]
		public var lastQuery:ArrayCollection;
		
		[Bindable]
		public var lastSortByRelevance:Boolean;
		
		public static final BUSINESS:String = "rt_business";
		public static final ENTERTAINMENT:String = "rt_entertainment";
		public static final HEALTH:String = "rt_Health";
		public static final POLITICS:String = "rt_Political";
		public static final SCIENTIFIC:String = "rt_Scientific";
		public static final SPORTS:String = "rt_Sports";
		public static final UNITED_STATES:String = "rt_US";
		public static final WORLD:String = "rt_World";
		public static final LOCAL:String = "rt_Local ";
		public static final SCIENCE_AND_TECH:String = "rt_ScienceAndTechnology";
		
		/**
		 * Creates a new query object given a query string and a category
		 * 
		 * @param query:String the query string to search for
		 * @param category:String the category to search within.  Can only be one of the static.  
		 * @throws Error if the category is invalid
		 * 
		 **/
		public function Query()
		{
			recent_query = new ArrayCollection();
		}
		
		//bing related vars
		private var _adult:AdultOption = new AdultOption();
		private var _sortOption:NewsSortOption = new NewsSortOption();
		private var _newsRequest:NewsRequest = new NewsRequest();
		private var _searchRequest:SearchRequest = new SearchRequest;
		/**
		 * Actually executes the search.  Add an event listener before this.  
		 */
		public function doSearch();
		{								
				//search logic
				var bing:BingService = new BingService();
				bing.addEventListener(SearchResultEvent.Search_RESULT, searchResults);
				bing.addEventListener(FaultEvent.FAULT, searchError);
						
				_adult._AdultOption= "Strict";
				_sortOption._NewsSortOption = _nextSortByRelevance ? "Relevance" : "Date";
				
				_newsRequest.Offset = 0;
				_newsRequest.Count = 15;
				_newsRequest.SortBy = sortOption;
				_newsRequest.Category = 
		
				_searchRequest.AppId = "8FE9AA6D693C08E68F43A1AF8DECCFB092EA54A3";
					
				_searchRequest.Query = _query;
														
				_searchRequest.Market = "en-us";
				_searchRequest.Adult = _adult;
				_searchRequest.News = _newsRequest;
				
				_searchRequest.Latitude = 40.77;
				_searchRequest.Longitude = 73.98;
				_searchRequest.Radius = 250;
				
				_searchRequest.Sources = new ArrayOfSourceType(["News"]);
				
				bing.search(_searchRequest);
		}
		
		private function searchResults(event:SearchResultEvent)
		{
			
		}
		
		private function searchError(event:FaultEvent)
		{
			
		}
	}
}