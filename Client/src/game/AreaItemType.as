package game
{
	import FarmValueObjects.ItemType_type;
	import FarmValueObjects.TypePic_type;
	
	import flash.utils.Dictionary;
	
	import mx.controls.Image;

	public class AreaItemType
	{
		private var _ImgCach:PictureCach;
		private var _StateDic:Dictionary;
		private var _ItemType:ItemType_type;
		
		public function AreaItemType(ItemType:ItemType_type)
		{
			_ImgCach = new PictureCach();
			_StateDic = new Dictionary();
			_ItemType = ItemType;
			initStates();
		}
		
		private function initStates():void
		{
			for each (var _Pic:TypePic_type in _ItemType.TypePic)
			{
				trace("AreaItemType.initStates: push state = "+ _Pic.state+", src=" + _Pic.src);
				_StateDic[_Pic.state] = _Pic.src;
			}
		}
		
		public function getPicture(State:int):Image
		{
			trace("getPicture(State = " + State.toString()+")");
			return _ImgCach.LoadPicture(_StateDic[State.toString()]);
		}
	}
}