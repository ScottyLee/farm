package game
{
	import FarmValueObjects.AreaItem_type;
	
	import mx.controls.Alert;
	import mx.controls.Image;
	public class AreaItem extends Image
	{
		private var _ItemData:AreaItem_type;
		private var _State:int;
		private var _MaxState:int;
		private var _Manager:AreaManager;
		private var _ItemType_id:int;
		private var _AreaId:int;
		public function AreaItem(ItemData:AreaItem_type, Manager:AreaManager)
		{
			super();
			_ItemData = ItemData;
			this.x = int(_ItemData.x);
			this.y = int(_ItemData.y);
			this._MaxState = int(_ItemData.maxstate);
			this.width = 100;
			this.height = 100;
			this._State = int(_ItemData.state);
			this._Manager = Manager;
			this._ItemType_id = int(_ItemData.item_type_id);
			trace("AreaItem constructor: invoke getImageByTypeAndState")
			super.source = this._Manager.getImageByTypeAndState(_ItemType_id, _State).source;
			_AreaId = int(ItemData.id);
			
		}
		
		public function canCollect():Boolean
		{
			return this._MaxState == this._State;
		}
		
		public function get AreaId():int
		{
			return _AreaId;
		}

		public function set AreaId(value:int):void
		{
			_AreaId = value;
		}

		public function incrementState():void
		{
			if (this._MaxState == this._State){				
				return;
			}
			this._State+=1;

			super.source = this._Manager.getImageByTypeAndState(_ItemType_id, _State).source;
		}
		public function decrementState():void
		{
			if (this._State == 0)
				return;
			this._State-=1;
			super.source = this._Manager.getImageByTypeAndState(_ItemType_id, _State).source;
		}
		
		public function get State():int
		{
			return _State;
		}

		public function set State(value:int):void
		{
			_State = value;
		}
	}
}