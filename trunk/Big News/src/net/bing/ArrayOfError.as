/**
 * ArrayOfError.as
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

	public class ArrayOfError extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfError(source:Array = null)
		{
			super(source);
		}
        
        
		public function addErrorAt(item:Error,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addError(item:Error):void 
		{
			addItem(item);
		} 

		public function getErrorAt(index:int):Error 
		{
			return getItemAt(index) as Error;
		}

		public function getErrorIndex(item:Error):int 
		{
			return getItemIndex(item);
		}

		public function setErrorAt(item:Error,index:int):void 
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
