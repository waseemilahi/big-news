/**
 * ArrayOfRelatedSearchResult.as
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

	public class ArrayOfRelatedSearchResult extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfRelatedSearchResult(source:Array = null)
		{
			super(source);
		}
        
        
		public function addRelatedSearchResultAt(item:RelatedSearchResult,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addRelatedSearchResult(item:RelatedSearchResult):void 
		{
			addItem(item);
		} 

		public function getRelatedSearchResultAt(index:int):RelatedSearchResult 
		{
			return getItemAt(index) as RelatedSearchResult;
		}

		public function getRelatedSearchResultIndex(item:RelatedSearchResult):int 
		{
			return getItemIndex(item);
		}

		public function setRelatedSearchResultAt(item:RelatedSearchResult,index:int):void 
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
