package game
{
	import FarmValueObjects.AreaData;
	import FarmValueObjects.AreaItem_type;
	import FarmValueObjects.ItemType_type;
	import FarmValueObjects.Message;
	import FarmValueObjects.Storage;
	
	import flash.events.MouseEvent;
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.controls.Image;
	import mx.core.IVisualElementContainer;
	import mx.rpc.CallResponder;
	import mx.rpc.events.ResultEvent;
	
	import services.farmservice.FarmService;

	public class AreaManager
	{
		private var _AreaId:String;
		private var _Display:Area;
		private var _AreaTypes:ArrayCollection ;
		private var _AreaItems:ArrayCollection;
		private var _TypeDic: Dictionary;
		private var _ItemDic: Dictionary;
		private var _AreaData:AreaData;
		private var _Service:FarmService;
		private var _Resp:CallResponder;
		private var _bg:Image;
		private var _ToolBox:ToolBox;
		private var _CollectMode:Boolean;
		private var _StorageVolume:int;
		
		public function AreaManager(Display:Area, AreaId:String)
		{
			_TypeDic = new Dictionary();
			_ItemDic = new Dictionary();
			_Service = new FarmService();
			_Service.addEventListener(ResultEvent.RESULT, onServiceResult);
			_Resp = new CallResponder();
			this._AreaId = AreaId;
			_Resp.token = _Service.getArea(this._AreaId);
			_Service.showBusyCursor = true;
			_Display = Display;
			
			
			this._bg = new Image();
			_bg.x = 0;
			_bg.y = 0;
			_Display.addElement(_bg);

		}
		
		public function get StorageVolume():int
		{
			return _StorageVolume;
		}

		public function set StorageVolume(value:int):void
		{
			_StorageVolume = value;
		}

		private function onServiceResult(event:ResultEvent):void
		{	
			this._AreaData = AreaData(_Resp.token.result);
			this._AreaTypes = _AreaData.AreaType.ItemType;
			this._AreaItems = _AreaData.Field.AreaItem;
			this._CollectMode = false;
			this._bg.load(this._AreaData.background);
			this._ToolBox = new ToolBox(this, _Display, _AreaData.ToolBox);
			this._ToolBox.x = 0;
			this._ToolBox.y = 0;
			this._ToolBox.autoLayout = true
			this._Display.addElement(_ToolBox);
			this.initTypes();
			this.initItems();
			//drawArea();
			this._ToolBox.updateStorage(int(_AreaData.storagevolume))
			this._Service.removeEventListener(ResultEvent.RESULT, onServiceResult);
			
		}
		
		private function initTypes():void
		{
			for each (var _ItemType:ItemType_type in this._AreaTypes)
			{
				trace("initTypes: _ItemType.item_type_id = " + _ItemType.item_type_id);
				this._TypeDic[_ItemType.item_type_id] = new AreaItemType(_ItemType);
				this._ToolBox.addtype(_ItemType);
			}
		}
		
		private function initItems():void
		{
			for each (var _AreaItem:AreaItem_type in this._AreaItems)
			{
				trace("initItems: _AreaItem.id = " + _AreaItem.id + ", _AreaItem.item_type_id = " + _AreaItem.item_type_id);
				var _TmpAreaItem:AreaItem = new AreaItem(_AreaItem, this);
				this._ItemDic[_AreaItem.id] = _TmpAreaItem;
				_TmpAreaItem.addEventListener(MouseEvent.CLICK, this.onItemClick);
				this._Display.addElement(_TmpAreaItem);
			}
				
		}
		
		public function getImageByTypeAndState(TypeId:int, State:int):Image
		{
			trace("getImageByTypeAndState: TypeId = "+TypeId.toString() + ", State = " + State.toString())
			return AreaItemType(_TypeDic[TypeId.toString()]).getPicture(State);
		}
		
		public function drawArea():void
		{
			for each (var _AI:AreaItem in _ItemDic)
			{
				trace("drawArea: Add element to area (State: " + _AI.State.toString()+")");
				this._Display.addElement(_AI);
			}
		}
		
		private function onAddItemDone(event:ResultEvent):void
		{
			this._Service.removeEventListener(ResultEvent.RESULT, onAddItemDone);
			var _AreaItem:AreaItem_type = AreaItem_type(_Resp.token.result);
			this._ItemDic[_AreaItem.id] = new AreaItem(_AreaItem, this);
			this._Display.addElement(AreaItem(this._ItemDic[_AreaItem.id]));
			AreaItem(this._ItemDic[_AreaItem.id]).addEventListener(MouseEvent.CLICK, this.onItemClick);
		}
		
		public function addItem(x:int, y:int, TypeId:int, State:int):void
		{
			_Service.addEventListener(ResultEvent.RESULT, onAddItemDone);
			this._Resp.token = this._Service.setItem(this._AreaId, TypeId.toString(), x.toString(),y.toString(), "0");
		}
		
		private function incrementAllDone(event:ResultEvent):void
		{
			this._Service.removeEventListener(ResultEvent.RESULT, incrementAllDone);
			var _Message:Message = Message(_Resp.token.result);
			if (int(_Message.Status.Type)!=0)
			{
				Alert.show("ошибка сервиса: " + _Message.Status.Message);
			}else			
				for each (var _AI:AreaItem in this._ItemDic)
					_AI.incrementState();
		
		}
		public function incrementAll(event:MouseEvent):void
		{
			_Service.addEventListener(ResultEvent.RESULT, incrementAllDone);
			this._Resp.token = this._Service.incrementAll(this._AreaId);
		}	
		
		private function decrementAllDone(event:ResultEvent):void
		{
			var _Message:Message = Message(_Resp.token.result);
			if (int(_Message.Status.Type)!=0)
			{
				Alert.show("ошибка сервиса: " + _Message.Status.Message);
			}else			
				for each (var _AI:AreaItem in this._ItemDic)
					_AI.decrementState();
			this._Service.removeEventListener(ResultEvent.RESULT, decrementAllDone);
		}
		public function decrementAll(event:MouseEvent):void
		{
			_Service.addEventListener(ResultEvent.RESULT, decrementAllDone);
			this._Resp.token = this._Service.decrementAll(this._AreaId);
		}	
		
		private function onCollectDone(event:ResultEvent):void
		{
			this._Service.removeEventListener(ResultEvent.RESULT, onCollectDone);
			var _Storage:Storage = Storage(this._Resp.token.result);
			this._StorageVolume = int(_Storage.volume);
			this._ToolBox.updateStorage(int(_Storage.volume));
			var _ItemToDestroy:AreaItem = AreaItem(this._ItemDic[_Storage.lastitem]);
			this._Display.removeElement(_ItemToDestroy);
			delete this._ItemDic[_Storage.lastitem];// вся надежда на сборщики мусора
			
		}
		
		protected function collect(ItemId:int):void
		{
			_Service.addEventListener(ResultEvent.RESULT, onCollectDone);
			this._Resp.token = this._Service.collect(this._AreaId, String(ItemId));
		}
		
		private function onItemClick(event:MouseEvent):void
		{
			if (this._CollectMode)
				if (AreaItem(event.currentTarget).canCollect())
					this.collect(AreaItem(event.currentTarget).AreaId);
		}
		
		public function setCollectItemMode(event:MouseEvent):void
		{
			//взводим флаг состояния выбора
			if (this._CollectMode)
				ToolBoxItem(event.currentTarget).alpha = .5;
			else
				ToolBoxItem(event.currentTarget).alpha = 1;
			this._CollectMode = !this._CollectMode;
		}
	}
}