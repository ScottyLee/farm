package game
{
	import flash.events.MouseEvent;
	
	import game.ToolBox;
	
	import mx.controls.Image;
	import mx.managers.DragManager;
	public class ToolBoxItem extends Image
	{
		private var _TypeId: int;
		private var _ToolBox:ToolBox;
		
		public function ToolBoxItem(TypeId:int, AreaToolBox:ToolBox)
		{
			this._TypeId = int(TypeId.toString());
			this._ToolBox = AreaToolBox;
			this.x = 0;
			this.y = 0;
		}
		
		public function setPicture(ItemPic:Image):void
		{
			this.source = ItemPic.source;
		}

		public function get TypeId():int
		{
			return _TypeId;
		}

		public function set TypeId(value:int):void
		{
			_TypeId = value;
		}

	}
}