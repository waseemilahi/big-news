/**
 * ArrayOfWebSearchTag.as
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

	public class ArrayOfWebSearchTag extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfWebSearchTag(source:Array = null)
		{
			super(source);
		}
        
        
		public function addWebSearchTagAt(item:WebSearchTag,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addWebSearchTag(item:WebSearchTag):void 
		{
			addItem(item);
		} 

		public function getWebSearchTagAt(index:int):WebSearchTag 
		{
			return getItemAt(index) as WebSearchTag;
		}

		public function getWebSearchTagIndex(item:WebSearchTag):int 
		{
			return getItemIndex(item);
		}

		public function setWebSearchTagAt(item:WebSearchTag,index:int):void 
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
