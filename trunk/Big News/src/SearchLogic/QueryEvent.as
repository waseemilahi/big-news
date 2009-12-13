package SearchLogic
{
	import flash.events.Event;

	public class QueryEvent extends Event
	{
		public function get fail():Boolean
		{
			return query == null;
		}
		public var query:Query;
		public var newQuery:Boolean = false;
		
		
		public static const COMPLETE:String = "QUERY_COMPLETE";
				
		public function QueryEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event {
			var qe:QueryEvent = new QueryEvent(this.type);
			qe.query = query;
			qe.newQuery = newQuery;
			return qe;
		}
	}
}