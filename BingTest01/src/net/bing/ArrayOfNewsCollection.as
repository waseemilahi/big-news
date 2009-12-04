/**
 * ArrayOfNewsCollection.as
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

	public class ArrayOfNewsCollection extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfNewsCollection(source:Array = null)
		{
			super(source);
		}
        
        
		public function addNewsCollectionAt(item:NewsCollection,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addNewsCollection(item:NewsCollection):void 
		{
			addItem(item);
		} 

		public function getNewsCollectionAt(index:int):NewsCollection 
		{
			return getItemAt(index) as NewsCollection;
		}

		public function getNewsCollectionIndex(item:NewsCollection):int 
		{
			return getItemIndex(item);
		}

		public function setNewsCollectionAt(item:NewsCollection,index:int):void 
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
