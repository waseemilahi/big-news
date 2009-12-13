package SearchLogic
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;
	
	public class QueryHistory extends EventDispatcher
	{
		
		public var queryHash:Dictionary = new Dictionary();
		
		[Bindable]
		public var history:ArrayCollection = new ArrayCollection();
		
		[Bindable]
		public var ready:Boolean = true;

		private var _index:Number;
		
		[Bindable(event='indexChanged')]
		public function get currentIndex():Number
		{
			return _index
		}
		public function set currentIndex(newIndex:Number):void
		{
			_index = newIndex;
			dispatchEvent(new Event("indexChanged"));	
		}
		
		[Bindable(event='indexChanged')]
		public function get currentQuery():Query
		{
			if(isNaN(currentIndex))
				return null;
			else
				return history[currentIndex];
				
		}

		private static var _instance:QueryHistory;
		
		//singleton logic taken from
		//http://www.gskinner.com/blog/archives/2006/07/as3_singletons.html
		public function QueryHistory(key:SingletonBlocker) 
		{
			if(key == null)
				throw new Error("Error: Instantiation failed: Use QueryHistory.instance instead of new.");
		}
		
		public static function get instance():QueryHistory
		{
			if(_instance == null)
			{
				_instance = new QueryHistory(new SingletonBlocker());
			}
			return _instance;	
		}
		
		
		public function getQuery(queryStr:String, category:String) :void
		{
			if(!ready)
			{
				trace("not ready to get a new query");
				return;
			}
			if(queryStr == null)
			{
				trace("invalid query string: " + queryStr);
				return;	
			}
			else if (category == null)
			{
				trace("category string invalid: " + category);
				return;
			}
			
			ready = false;
			var query:Query = getQueryByKey(key(category, queryStr));
			if(query == null)
			{
				query = new Query();
				query.query = queryStr;
				query.category = category;
			}
			query.addEventListener(QueryEvent.COMPLETE, handleQuery);
			query.search();
		}
		
		private function handleQuery(event:QueryEvent):void
		{
			if(!event.fail)
			{ 
				var q:Query = event.query;
				q.removeEventListener(QueryEvent.COMPLETE, handleQuery);
				var index:Number = getIndexByQuery(q);
				if(isNaN(index) && q.query != "") //new query!
				{
					event.newQuery = true;
					history.addItemAt(q, 0);
					queryHash[key(q.category, q.query)] = history.length;
					index = 0;
				}
				currentIndex = index;
			}
			ready = true;
			
			dispatchEvent(event);
		}
				
		private static function key(category:String, query:String):String
		{
			return category + query;
		}
		
		public function getQueryByKey(key:String):Query
		{
			var index:Number = queryHash[key]; //index from tail
			// 0  1  2  3  4  5
			//(5)(4)(3)(2)(1)(0)
			//we ask for the distance from tail, then use it to calculate an index. 
			if (isNaN(index))
				return null;
			else
				return history[history.length - index];		 
		}
		
		public function getIndexByQuery(query:Query):Number
		{
			var tail_index:Number = queryHash[key(query.category, query.query)];
			if(isNaN(tail_index))
				return tail_index;
			return history.length - tail_index;
		}
		
	}
}

internal class SingletonBlocker {}