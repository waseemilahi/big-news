/**
 * ArrayOfSpellResult.as
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

	public class ArrayOfSpellResult extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfSpellResult(source:Array = null)
		{
			super(source);
		}
        
        
		public function addSpellResultAt(item:SpellResult,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addSpellResult(item:SpellResult):void 
		{
			addItem(item);
		} 

		public function getSpellResultAt(index:int):SpellResult 
		{
			return getItemAt(index) as SpellResult;
		}

		public function getSpellResultIndex(item:SpellResult):int 
		{
			return getItemIndex(item);
		}

		public function setSpellResultAt(item:SpellResult,index:int):void 
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
