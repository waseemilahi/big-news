package SearchLogic
{
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;

	public class Query extends EventDispatcher
	{
		[Bindable]
		public var query:String;
		
		[Bindable]
		public var category:String;
		
		[Bindable]
		public var results:ArrayCollection = new ArrayCollection();
		
		[Bindable]
		public var ready:Boolean;
		
		
		public function Query(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}