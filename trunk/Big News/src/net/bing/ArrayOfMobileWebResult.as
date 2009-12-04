/**
 * ArrayOfMobileWebResult.as
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

	public class ArrayOfMobileWebResult extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfMobileWebResult(source:Array = null)
		{
			super(source);
		}
        
        
		public function addMobileWebResultAt(item:MobileWebResult,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addMobileWebResult(item:MobileWebResult):void 
		{
			addItem(item);
		} 

		public function getMobileWebResultAt(index:int):MobileWebResult 
		{
			return getItemAt(index) as MobileWebResult;
		}

		public function getMobileWebResultIndex(item:MobileWebResult):int 
		{
			return getItemIndex(item);
		}

		public function setMobileWebResultAt(item:MobileWebResult,index:int):void 
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
