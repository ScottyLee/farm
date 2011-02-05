package game
{
	import FarmValueObjects.ItemType_type;
	import FarmValueObjects.ToolBox_type;
	
	import flash.events.MouseEvent;
	import flash.utils.Dictionary;
	
	import mx.charts.PieChart;
	import mx.controls.Alert;
	import mx.controls.Image;
	import mx.core.DragSource;
	import mx.core.LayoutContainer;
	import mx.events.DragEvent;
	import mx.managers.DragManager;
	
	import spark.components.Label;
	

	public class ToolBox extends LayoutContainer
	{
		private var _Manager:AreaManager;
		private var _Target:Area;
		private var _ItemsDict:Dictionary;
		private var _ToolBoxData:ToolBox_type;
		private var _PicCach:PictureCach;
		private var _StorageLbl:Label;//Это я от нечего делать
		
		public function ToolBox(Manager:AreaManager, TargetArea:Area, ToolBoxData:ToolBox_type)
		{
			_PicCach = new PictureCach();
			_Manager = Manager;
			_Target = TargetArea;
			_ItemsDict = new Dictionary();
			_ToolBoxData = ToolBoxData;
			createButtons();
		}
		
		private function createButtons():void
		{
			//Эти три кнопки являются статическими и не зависят от типов элементов поэтому создаются именно так
			
			//надпись склада
			_StorageLbl = new Label();
			_StorageLbl.text  = "Storage: " + _Manager.StorageVolume.toString();
			this.addElement(_StorageLbl);
			
			//Батон инкремента
			var _IncButton:ToolBoxItem = new ToolBoxItem(-1, this);
			_IncButton.setPicture(_PicCach.LoadPicture(this._ToolBoxData.IncButton.src));
			this.addElement(_IncButton);
			_IncButton.addEventListener(MouseEvent.CLICK, this._Manager.incrementAll);
			
			//Баотн декремента
			var _DecButton:ToolBoxItem = new ToolBoxItem(-2, this);
			_DecButton.setPicture(_PicCach.LoadPicture(this._ToolBoxData.DecButton.src));
			this.addElement(_DecButton);
			_DecButton.addEventListener(MouseEvent.CLICK, this._Manager.decrementAll);
			
			//Баотн сборщика
			var _CollectButton:ToolBoxItem = new ToolBoxItem(-3, this);
			_CollectButton.setPicture(_PicCach.LoadPicture(this._ToolBoxData.CollectButton.src));
			this.addElement(_CollectButton);
			_CollectButton.addEventListener(MouseEvent.CLICK, this._Manager.setCollectItemMode);
			_CollectButton.alpha = .5;//типа выключен по умолчанию
			

			
		}
		//обновление надписи склада
		public function updateStorage(Count:int):void
		{
			this._StorageLbl.text = "Storage: " + Count.toString();
		}
		
		
		public function addtype(ToolBoxItemType:ItemType_type):void
		{
			trace("Addtype " + ToolBoxItemType.item_type_id );
			var _TbItem:ToolBoxItem = new ToolBoxItem(int(ToolBoxItemType.item_type_id), this);
			if (_ItemsDict[_TbItem.TypeId] == null)
				_ItemsDict[_TbItem.TypeId] = _TbItem;
			else
				Alert.show("Повторная вставка типа в ToolBox");
			configureListeners(_TbItem);
			_TbItem.setPicture(this._Manager.getImageByTypeAndState(_TbItem.TypeId, int(ToolBoxItemType.maxstate)));
			_TbItem.x = 0;
			_TbItem.y = 0;
			this.addElement(_TbItem);
		}
		
		private function configureListeners(Item:ToolBoxItem):void
		{
			Item.addEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler);
			this._Target.addEventListener(DragEvent.DRAG_ENTER, dragEnterHandler);
			this._Target.addEventListener(DragEvent.DRAG_DROP, dragDropHandler);
		}
			
		//инициируем перетаскивание c ToolBox'а
		protected function mouseMoveHandler(event:MouseEvent):void 
		{                
			var dragInitiator:ToolBoxItem = ToolBoxItem(event.currentTarget);
			var _Ds:DragSource = new DragSource();
			_Ds.addData(dragInitiator, "ToolBoxItem");               
			DragManager.doDrag(dragInitiator, _Ds, event);
		}
		
		//Проводим над чем-то
		protected function dragEnterHandler(event:DragEvent):void
		{
			if (event.dragSource.hasFormat("ToolBoxItem"))
				DragManager.acceptDragDrop(Area(event.currentTarget));
		}
		
		//Когда отпустили
		protected function dragDropHandler(event:DragEvent):void
		{
			var TBitem:ToolBoxItem = ToolBoxItem(event.dragInitiator);
			this._Manager.addItem(event.stageX, event.stageY,TBitem.TypeId, 0); 
		}
		
	}
}