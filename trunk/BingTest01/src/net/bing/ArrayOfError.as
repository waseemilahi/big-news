/**
 * ArrayOfError.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package net.bing
{
	import mx.collections.ArrayCollection;
	import mx.collections.ICollectionView;
	import mx.collections.IList;
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
        
        
		public function addErrorAt(item:net.bing.Error,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addError(item:net.bing.Error):void 
		{
			addItem(item);
		} 

		public function getErrorAt(index:int):net.bing.Error 
		{
			return getItemAt(index) as net.bing.Error;
		}

		public function getErrorIndex(item:net.bing.Error):int 
		{
			return getItemIndex(item);
		}

		public function setErrorAt(item:net.bing.Error,index:int):void 
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
