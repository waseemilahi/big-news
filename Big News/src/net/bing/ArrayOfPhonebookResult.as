/**
 * ArrayOfPhonebookResult.as
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

	public class ArrayOfPhonebookResult extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfPhonebookResult(source:Array = null)
		{
			super(source);
		}
        
        
		public function addPhonebookResultAt(item:PhonebookResult,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addPhonebookResult(item:PhonebookResult):void 
		{
			addItem(item);
		} 

		public function getPhonebookResultAt(index:int):PhonebookResult 
		{
			return getItemAt(index) as PhonebookResult;
		}

		public function getPhonebookResultIndex(item:PhonebookResult):int 
		{
			return getItemIndex(item);
		}

		public function setPhonebookResultAt(item:PhonebookResult,index:int):void 
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
