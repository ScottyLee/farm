package game
{
	import FarmValueObjects.AreaData;
	import FarmValueObjects.Field_type;
	
	import mx.controls.Alert;
	import mx.controls.Image;
	import mx.core.LayoutContainer;
	import mx.rpc.CallResponder;
	import mx.rpc.events.ResultEvent;
	
	import services.farmservice.FarmService;

	public class Area extends LayoutContainer
	{
		private var _AreaManager:AreaManager;
		
		public function Area()
		{
			this.layout = "absolute";
			this._AreaManager = new AreaManager(this, "1");	
		}
		private function createGame():void
		{

		}
		
		
	}
}