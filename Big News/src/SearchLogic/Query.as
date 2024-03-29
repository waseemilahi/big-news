package SearchLogic
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.events.FaultEvent;
	
	import net.bing.AdultOption;
	import net.bing.ArrayOfSourceType;
	import net.bing.BingService;
	import net.bing.NewsRequest;
	import net.bing.NewsResponse;
	import net.bing.NewsResult;
	import net.bing.NewsSortOption;
	import net.bing.SearchRequest;
	import net.bing.SearchResultEvent;
	

	public class Query extends EventDispatcher
	{	
		private const _resultsPerPage:Number = 15;
		
		private var _relevanceCache:ArrayCollection = new ArrayCollection();
		private var _relevanceTotal:Number;
		
		private var _dateCache:ArrayCollection = new ArrayCollection();
		private var _dateTotal:Number;	
		
		private var _nextSortByRelevance:Boolean;
		
		[Bindable]
		public static var urlHash:Dictionary = new Dictionary();
		
		[Bindable]
		public var query:String;
		
		private var _category:String;
		[Bindable(event='categoryChanged')]
		public function get category():String
		{ return _category; }
		
		public function set category(category:String):void
		{
			if(_category != category)
			{
				_category = category;
				dispatchEvent(new Event("categoryChanged"));
			}
		}
		
		[Bindable]
		public var loaded:Boolean = false; 
		
		private var _categoryHash:Object = {
			"":"All",
			"rt_Business":"Business",  
			rt_Entertainment:"Entertainment",  
			rt_Health:"Health",  
			rt_Political:"Politics",  
			rt_Scientific:"Scientific",  
			rt_Sports:"Sports",  
			rt_US:"United States",  
			rt_World:"World",  
			rt_Local:"Local",  
			rt_ScienceAndTechnology:"IT"
		};
		
		[Bindable(event='categoryChanged')]
		public function get readableCategory():String
		{
				return _categoryHash[category];				
		}
		
		[Bindable]
		public var results:ArrayCollection = new ArrayCollection();
		
		[Bindable]
		public var ready:Boolean = true;
		
		private var _currentPage:Number;
		[Bindable(event='pageChanged')]
		public function get currentPage():Number
		{
			return _currentPage;
		}
		public function set currentPage(page:Number):void
		{
//			trace("changing page  from ", _currentPage, "  to ", page);
			
			if(_currentPage != page)
			{
//				trace("changing page");
				_currentPage = page
				dispatchEvent(new Event('pageChanged'));
			}
		}
		
		[Bindable(event='totalChanged')]
		public function get totalPages():Number
		{
			return Math.ceil(total / _resultsPerPage);
		}
		
		private var _total:Number;
		[Bindable(event='totalChanged')]
		public function get total():Number
		{
			return _total;
		}
		
		public function set total(total:Number):void
		{
			if(_total != total)
			{
				_total = total;
				dispatchEvent(new Event('totalChanged'));
			}	
		}
		
		
		[Bindable]
		public var sortedByRelevance:Boolean;
				
		public function get index():Number
		{
			return QueryHistory.instance.getIndexByQuery(this);
		}
		
		public function Query(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		//sets up a search request;
		private function setupRequest(sortByRelevance:Boolean, offset:Number):SearchRequest
		{
			var adult:AdultOption = new AdultOption();
			var sortOption:NewsSortOption = new NewsSortOption();
			var newsRequest:NewsRequest = new NewsRequest();
			var request:SearchRequest = new SearchRequest();

			newsRequest.Offset = offset;
			newsRequest.Count = 15;
			
			sortOption._NewsSortOption = sortByRelevance ? "Relevance" : "Date";
			newsRequest.SortBy = sortOption;

			request.News = newsRequest;
			
			request.Query = query;
			newsRequest.Category = category;

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
		
		public function search(sortByRelevance:Boolean = true, offset:Number = 0):void
		{
//			trace("searching");
			if(!ready)
			{
				trace("can't search, not ready");
				return;
			}
			ready = false;
			_nextSortByRelevance = sortByRelevance;
			var page:uint = offset / this._resultsPerPage;
			var workingCache:ArrayCollection;
			var workingTotal:Number;
			
			if(sortByRelevance)
			{
				workingCache = _relevanceCache;
				workingTotal = _relevanceTotal;
			}
			else
			{
				workingCache = _dateCache;
				workingTotal = _dateTotal;
			}

			//check cache
			if(workingCache != null && workingCache.length > page) 
			{
				results = workingCache.getItemAt(page) as ArrayCollection;
				currentPage = page;
				total = workingTotal;
				sortedByRelevance = _nextSortByRelevance;
				var qe:QueryEvent = new QueryEvent(QueryEvent.COMPLETE);
				qe.query = this;
				ready = true;
				dispatchEvent(qe);
			}
			else
			{
				var request:SearchRequest = setupRequest(sortByRelevance, offset);
				var bing:BingService = new BingService();
				bing.addEventListener(SearchResultEvent.Search_RESULT, handleSearch);
				bing.addEventListener(FaultEvent.FAULT, handleSearch);
				bing.search(request);
			}
		}
		
		private function handleSearch(e:Event):void
		{
//			trace("got search back");
			var qe:QueryEvent = new QueryEvent(QueryEvent.COMPLETE);
			if (e is SearchResultEvent)
			{
				this.loaded = true;
				 if((e as SearchResultEvent).result.News != null)
				 {
				 	this.sortedByRelevance = _nextSortByRelevance;
					qe.query = this;
					updateSearch((e as SearchResultEvent).result.News)
				 }
				 else
				 {
					qe.query = this;
					this.total = 0;
					this.currentPage = -1;
			     }
			}
			else
				trace("search failed!", e);
			
			ready = true;
			dispatchEvent(qe);
		}
				
		private function updateSearch(response:NewsResponse, useRelevance:Boolean = true) :void
		{
			//update urlHash
			for each(var nr:NewsResult in response.Results)
			{
				if (urlHash[nr.Url] == undefined)
					urlHash[nr.Url] = new ArrayCollection();
				//Create a special Object to hold the NewsResult,
				//but also it's parent, which is a SearchResponse.
				//This allows the program to use the previous
				//search results.
				var obj:Object = new Object();
				obj.parent = this;
				obj.newsresult = nr;
				ArrayCollection(urlHash[nr.Url]).addItem(obj);
			}
			
			//update cache
			var newTotal:Number;
			var newCurrentPage:Number;
			if(useRelevance)
			{	
				newTotal = this._relevanceTotal = response.Total;
				_relevanceCache.addItem(response.Results);
				newCurrentPage = _relevanceCache.length-1; 
			}	
			else
			{
				newTotal = this._dateTotal = response.Total;
				_dateCache.addItem(response.Results);
				newCurrentPage = _dateCache.length-1;	
			}
			
			//update local settings
			this.results = response.Results;
			this.total = newTotal;
			this.currentPage = newCurrentPage;
		}
		
		[Bindable(event='pageChanged')]
		public function get canNextPage():Boolean
		{
			return currentPage < totalPages-1;
		}
		
		[Bindable(event='pageChanged')]
		public function get canPrevPage():Boolean
		{
			return currentPage > 0;	
		} 
		
		public function nextPage():void
		{
			getPage(currentPage+1);
		}
		
		public function prevPage():void
		{
			getPage(currentPage-1);
		}
	
		public function getPage(n:Number):void
		{
			if(!ready)
			{
				trace("can't get page, not ready");
				return;
			}
			else if (n < 0 || (n >= totalPages))
			{
				trace("page " + n + " out of bounds (0,"+totalPages+")");
				return;
			}
			else if (n == currentPage)
			{
				trace("already at page " + n);
				return;
			}
			search(this.sortedByRelevance, n*_resultsPerPage);
			
			//check cache			
		}
		
		public function sort(byRelevance:Boolean):void
		{
			if(!ready)
			{
				trace("can't sort, not ready");	
				return;
			}
			else if (byRelevance == sortedByRelevance)
			{
				trace("already sorted by " + byRelevance ? "relevance." : "date");
				return; 
			}
			search(byRelevance);	
		}		
	}
}