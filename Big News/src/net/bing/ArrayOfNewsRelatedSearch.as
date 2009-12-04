/**
 * ArrayOfNewsRelatedSearch.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package net.bing
{
	import mx.utils.ObjectProxy;
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.collections.ICollectionView;
	import mx.rpc.soap.types.*;
	/**
	 * Typed array collection
	 */

	public class ArrayOfNewsRelatedSearch extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfNewsRelatedSearch(source:Array = null)
		{
			super(source);
		}
        
        
		public function addNewsRelatedSearchAt(item:NewsRelatedSearch,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addNewsRelatedSearch(item:NewsRelatedSearch):void 
		{
			addItem(item);
		} 

		public function getNewsRelatedSearchAt(index:int):NewsRelatedSearch 
		{
			return getItemAt(index) as NewsRelatedSearch;
		}

		public function getNewsRelatedSearchIndex(item:NewsRelatedSearch):int 
		{
			return getItemIndex(item);
		}

		public function setNewsRelatedSearchAt(item:NewsRelatedSearch,index:int):void 
		{
			setItemAt(item,index);
		}

		public function asIList():IList 
		{
			return this as IList;
		}
        
		public function asICollectionView():ICollectionView 
		{
			return this as ICollectionView;
		}
	}
}
