package game
{
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.utils.Dictionary;
	
	import mx.controls.Alert;
	import mx.controls.Image;

	public class PictureCach
	{
		private var _dict:Dictionary;
		
		private function onCompleteLoad(event:Event):void
		{
			_dict[Loader(event.target).contentLoaderInfo.url] = Loader(event.target).content;
		}
		
		public function CachedPictureAsync(url:String):void
		{
			if (_dict[url] == null)
			{
				var _Loader:Loader = new Loader();
				var _Req:URLRequest = new URLRequest(url);
				_Loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onCompleteLoad);
			}	
		}
		
		public function alredyCached(url:String):Boolean
		{
			if (_dict[url] == null)
				return false
			else
				return true;
		}
		public function LoadPicture(url:String):Image
		{
			trace("PictureCach.LoadPicture(url = "+url+")");
			if (_dict[url] == null)//Незакешированы ли мы?
			{
				trace("Caching :" + url);
				var _img:Image = new Image();
				_img.load(url);
				_dict[url] = _img.data;
				trace("Caching done!");
				return _img;
			} else{
				trace("Alredy cached");
				return Image(_dict[url]);
			}
		}
		
		public function PictureCach()
		{
			_dict = new Dictionary();
		}
	}
}