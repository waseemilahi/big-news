/**
 * ArrayOfImageResult.as
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

	public class ArrayOfImageResult extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfImageResult(source:Array = null)
		{
			super(source);
		}
        
        
		public function addImageResultAt(item:ImageResult,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addImageResult(item:ImageResult):void 
		{
			addItem(item);
		} 

		public function getImageResultAt(index:int):ImageResult 
		{
			return getItemAt(index) as ImageResult;
		}

		public function getImageResultIndex(item:ImageResult):int 
		{
			return getItemIndex(item);
		}

		public function setImageResultAt(item:ImageResult,index:int):void 
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
