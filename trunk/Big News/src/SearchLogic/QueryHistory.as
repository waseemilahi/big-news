package SearchLogic
{
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;
	
	public class QueryHistory
	{
		[Bindable]
		public var urlHash:Dictionary = new Dictionary();
		
		public var queryHash:Dictionary = new Dictionary();
		
		[Bindable]
		public var history:ArrayCollection = new ArrayCollection();
		
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
				_instance = new 
			}
			return _instance;	
		}

	}
}

internal class SingletonBlocker {}