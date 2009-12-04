/**
 * ArrayOfNewsArticle.as
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

	public class ArrayOfNewsArticle extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function ArrayOfNewsArticle(source:Array = null)
		{
			super(source);
		}
        
        
		public function addNewsArticleAt(item:NewsArticle,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addNewsArticle(item:NewsArticle):void 
		{
			addItem(item);
		} 

		public function getNewsArticleAt(index:int):NewsArticle 
		{
			return getItemAt(index) as NewsArticle;
		}

		public function getNewsArticleIndex(item:NewsArticle):int 
		{
			return getItemIndex(item);
		}

		public function setNewsArticleAt(item:NewsArticle,index:int):void 
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
