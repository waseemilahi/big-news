/**
 * ArrayOfWebResult.as
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

	public class ArrayOfWebResult extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfWebResult(source:Array = null)
		{
			super(source);
		}
        
        
		public function addWebResultAt(item:WebResult,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addWebResult(item:WebResult):void 
		{
			addItem(item);
		} 

		public function getWebResultAt(index:int):WebResult 
		{
			return getItemAt(index) as WebResult;
		}

		public function getWebResultIndex(item:WebResult):int 
		{
			return getItemIndex(item);
		}

		public function setWebResultAt(item:WebResult,index:int):void 
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
