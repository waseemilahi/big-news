/**
 * ArrayOfVideoResult.as
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

	public class ArrayOfVideoResult extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfVideoResult(source:Array = null)
		{
			super(source);
		}
        
        
		public function addVideoResultAt(item:VideoResult,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addVideoResult(item:VideoResult):void 
		{
			addItem(item);
		} 

		public function getVideoResultAt(index:int):VideoResult 
		{
			return getItemAt(index) as VideoResult;
		}

		public function getVideoResultIndex(item:VideoResult):int 
		{
			return getItemIndex(item);
		}

		public function setVideoResultAt(item:VideoResult,index:int):void 
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
