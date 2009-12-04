/**
 * ArrayOfInstantAnswerResult.as
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

	public class ArrayOfInstantAnswerResult extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfInstantAnswerResult(source:Array = null)
		{
			super(source);
		}
        
        
		public function addInstantAnswerResultAt(item:InstantAnswerResult,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addInstantAnswerResult(item:InstantAnswerResult):void 
		{
			addItem(item);
		} 

		public function getInstantAnswerResultAt(index:int):InstantAnswerResult 
		{
			return getItemAt(index) as InstantAnswerResult;
		}

		public function getInstantAnswerResultIndex(item:InstantAnswerResult):int 
		{
			return getItemIndex(item);
		}

		public function setInstantAnswerResultAt(item:InstantAnswerResult,index:int):void 
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
