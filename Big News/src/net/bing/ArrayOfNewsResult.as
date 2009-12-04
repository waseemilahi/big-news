/**
 * ArrayOfNewsResult.as
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

	public class ArrayOfNewsResult extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfNewsResult(source:Array = null)
		{
			super(source);
		}
        
        
		public function addNewsResultAt(item:NewsResult,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addNewsResult(item:NewsResult):void 
		{
			addItem(item);
		} 

		public function getNewsResultAt(index:int):NewsResult 
		{
			return getItemAt(index) as NewsResult;
		}

		public function getNewsResultIndex(item:NewsResult):int 
		{
			return getItemIndex(item);
		}

		public function setNewsResultAt(item:NewsResult,index:int):void 
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
