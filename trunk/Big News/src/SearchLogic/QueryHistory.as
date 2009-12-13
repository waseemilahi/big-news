package SearchLogic
{
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;
	
	public class QueryHistory extends EventDispatcher
	{
		[Bindable]
		public var urlHash:Dictionary = new Dictionary();
		
		public var queryHash:Dictionary = new Dictionary();
		
		[Bindable]
		public var history:ArrayCollection = new ArrayCollection();
		
		[Bindable]
		public var ready:Boolean = true;

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
		
		private var _newQuery:Boolean // used to dispatch new query events (to add to visual history)
		public function getQuery(queryStr:String, category:String) :void
		{
			ready = false;
			var query:Query = getQueryByKey(key(category, queryStr));
			_newQuery = query == null;
			if(_newQuery)
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
			event.newQuery = _newQuery;
			if(!event.fail)
			{
				var q:Query = event.query;
				var index:Number = getIndexByQuery(q);
				if(isNaN(index)) //new query!
				{
					history.addItemAt(q, 0);
					queryHash[key(q.category, q.query)] = history.length;
				}
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