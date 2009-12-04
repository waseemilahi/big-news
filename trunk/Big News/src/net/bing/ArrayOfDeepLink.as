/**
 * ArrayOfDeepLink.as
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

	public class ArrayOfDeepLink extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfDeepLink(source:Array = null)
		{
			super(source);
		}
        
        
		public function addDeepLinkAt(item:DeepLink,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addDeepLink(item:DeepLink):void 
		{
			addItem(item);
		} 

		public function getDeepLinkAt(index:int):DeepLink 
		{
			return getItemAt(index) as DeepLink;
		}

		public function getDeepLinkIndex(item:DeepLink):int 
		{
			return getItemIndex(item);
		}

		public function setDeepLinkAt(item:DeepLink,index:int):void 
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
