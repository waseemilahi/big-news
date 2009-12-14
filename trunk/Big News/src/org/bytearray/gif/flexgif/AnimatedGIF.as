package org.bytearray.gif.flexgif
{
	import flash.events.Event;
	import flash.net.URLRequest;
	
	import mx.controls.Image;
	
	import org.bytearray.gif.events.GIFPlayerEvent;
	import org.bytearray.gif.player.GIFPlayer;
	
	public class AnimatedGIF extends Image
	{
		private var gif:GIFPlayer;
		private var _source:String;
		
		public function AnimatedGIF()
		{
			super();
			gif = new GIFPlayer(_autoPlay);
		}
		
		[Inspectable(type="Boolean", enumeration="true,false")]
		private var _autoPlay:Boolean = true;;
		public function get autoPlay():Boolean
		{
			return _autoPlay;
		}
		
		public function play():void
		{
			gif.play();
		}
		
		public function stop():void
		{
			gif.stop();
		}
		
		override public function set source(value:Object):void
		{
			if (_source != (value as String))
			{
				_source = value as String;
				gif.load(new URLRequest(_source));
				gif.addEventListener(GIFPlayerEvent.COMPLETE, gifComplete);
				this.addChild(gif);
				
				dispatchEvent(new Event("sourceChanged"));
			}
		}
		
		private function gifComplete(event:GIFPlayerEvent):void
		{
			invalidateProperties();
			invalidateSize();
			invalidateDisplayList();
		}
		
		override protected function measure():void
		{
			super.measure();
			
			if (gif.frames.length > 0)
			{
				measuredHeight = gif.frames[0].bitmapData.height;
				measuredWidth = gif.frames[0].bitmapData.width;
			}
		}
	}
}