/**
 * ArrayOfTranslationResult.as
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

	public class ArrayOfTranslationResult extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfTranslationResult(source:Array = null)
		{
			super(source);
		}
        
        
		public function addTranslationResultAt(item:TranslationResult,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addTranslationResult(item:TranslationResult):void 
		{
			addItem(item);
		} 

		public function getTranslationResultAt(index:int):TranslationResult 
		{
			return getItemAt(index) as TranslationResult;
		}

		public function getTranslationResultIndex(item:TranslationResult):int 
		{
			return getItemIndex(item);
		}

		public function setTranslationResultAt(item:TranslationResult,index:int):void 
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
