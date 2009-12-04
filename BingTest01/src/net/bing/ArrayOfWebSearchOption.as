/**
 * ArrayOfWebSearchOption.as
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

	public class ArrayOfWebSearchOption extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfWebSearchOption(source:Array = null)
		{
			super(source);
		}
        
        
		public function addWebSearchOptionAt(item:WebSearchOption,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addWebSearchOption(item:WebSearchOption):void 
		{
			addItem(item);
		} 

		public function getWebSearchOptionAt(index:int):WebSearchOption 
		{
			return getItemAt(index) as WebSearchOption;
		}

		public function getWebSearchOptionIndex(item:WebSearchOption):int 
		{
			return getItemIndex(item);
		}

		public function setWebSearchOptionAt(item:WebSearchOption,index:int):void 
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
