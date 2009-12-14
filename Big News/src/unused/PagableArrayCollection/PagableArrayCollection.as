/* reference : 
	source Gotton from the URL 
		-> http://svn.riaforge.org/pagableAC/trunk/com/boyzoid/PagableArrayCollection/PagableArrayCollection.as
 */
package PagableArrayCollection
{
    import mx.collections.ArrayCollection;
    import mx.collections.ArrayList;
    import mx.collections.ItemResponder;
    import mx.collections.errors.ItemPendingError;
    import mx.events.CollectionEvent;
    import mx.events.CollectionEventKind;

    
    public class PagableArrayCollection extends ArrayCollection
    {   
    	//Private variables
       
        private var _itemsPerPage:Number= 25;
        private var _currentPage:Number = 1;
        private var _maxIndex:Number = 24;
        private var _minIndex:Number = 0;
        private var revision:int;
        private var pendingUpdates:Array;
        
        [Bindable]
        public var pages:Number = 1;
    	
        public function PagableArrayCollection(source:Array=null){
	        super();
	        this.source = source;
	        this.addEventListener(CollectionEvent.COLLECTION_CHANGE,setFilter);
	        setFilter();
	    }
        
        //private methods
        private function setPages(n:Number):void{
        	pages = Math.ceil(n/itemsPerPage);
        	if(pages == 0) pages = 1;
        	
        	if(currentPage > pages){
                currentPage = pages;                
            }
        }
        
        private function setFilter(e:CollectionEvent=null):void{
            _maxIndex = (currentPage * itemsPerPage)-1;
            _minIndex = _maxIndex - (itemsPerPage -1);
            if(e == null){
            	refresh();
            }
            

        }
        
        private function filterData(item:Object):Boolean{
            return (getItemIndex(item) >= _minIndex && getItemIndex(item) <= _maxIndex)
        }
        
        private function internalRefresh(dispatch:Boolean):Boolean{
    	var tmp:Array = [];
		var len:int;
		var i:int;
		var item:Object;
		try
            {
                populateLocalIndex();
            }
            catch(pending:ItemPendingError)
            {
                pending.addResponder(new ItemResponder(
                    function(data:Object, token:Object = null):void
                    {
                        internalRefresh(dispatch);
                    },
                    function(info:Object, token:Object = null):void
                    {
                        //no-op
                    }));
                return false;
            }
                
        if (sort || filterFunction != null)
        {
            //added coded to take pagination into account
			
            if (filterFunction != null)
            {                
                len = localIndex.length;
                for (i = 0; i < len; i++)
                {
                    item = localIndex[i];
                    if (filterFunction(item))
                    {
                        tmp.push(item);
                    }
                }
                localIndex = tmp;
               
            }

            
            
            if (sort)
            {
                sort.sort(localIndex);
                dispatch = true;
            }
        }
        
        setPages(localIndex.length);

        tmp = [];
        len = localIndex.length;
	        for (i = 0; i < len; i++)
	        {
	            item = localIndex[i];
	            if (filterData(item))
	            {
	                tmp.push(item);
	            }
	        }
	     localIndex = tmp;
         

        revision++;
        pendingUpdates = null;
        if (dispatch)
        {
            var refreshEvent:CollectionEvent =
                new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
            refreshEvent.kind = CollectionEventKind.REFRESH;
            dispatchEvent(refreshEvent);
        }
        
        return true;
    }
    
    private function populateLocalIndex():void{
        if (list)
        {
            localIndex = list.toArray();
        }
        else
        {
            localIndex = [];
        }
    }
        
        //public methods
        
        [Inspectable(category="General", arrayType="Object")]
	    [Bindable("listChanged")] //superclass will fire this
	
	    /**
	     *  The source of data in the ArrayCollection.
	     *  The ArrayCollection object does not represent any changes that you make
	     *  directly to the source array. Always use
	     *  the ICollectionView or IList methods to modify the collection.
	     */
	    override public function get source():Array
	    {
	        if (list && (list is ArrayList))
	        {
	            return ArrayList(list).source;
	        }
	        return null;
	    }
	
	    /**
	     *  @private
	     */
	    override public function set source(s:Array):void
	    {
	        list = new ArrayList(s);
	        pages = Math.ceil(list.length/itemsPerPage);
	        setFilter();
	    }
        
        override public function refresh():Boolean
	    {
	        return internalRefresh(true);
	    }
        
        [Bindable]
        public function get itemsPerPage():Number{
            return _itemsPerPage;
        }
        
        public function set itemsPerPage(value:Number):void{
        	if(value <= 0 || isNaN(value)) value = 1;
            _itemsPerPage = value;
            setFilter();
        }
        
         [Bindable]
        public function get currentPage():Number{
            return _currentPage;
        }
        
        public function set currentPage(value:Number):void{
            _currentPage = value;
            setFilter();
        }
        
        
        public function pageUp():void{
             if(currentPage < pages){
                currentPage += 1;
            }
        }
        
        public function pageDown():void{
            if(currentPage > 1){
                currentPage -= 1;
            }
        }
        
    }
} 