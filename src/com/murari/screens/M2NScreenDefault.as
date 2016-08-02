package com.murari.screens
{
	import com.murari.interfaces.IMyScreen;
	
	import feathers.controls.Button;
	import feathers.controls.Screen;
	
	public class M2NScreenDefault extends Screen implements IMyScreen
	{
		public static const SCREEN_NAME:String = "default-screen";
		
		private var _button:Button;
		
		
		public function M2NScreenDefault()
		{
			super();
		}
		
		override protected function initialize():void
		{
			super.initialize();
		}
		
		public function initializeScreen():void
		{
			_loadData();
			_createContainers();
		}
		
		private function _loadData():void
		{
			
		}
		
		private function _createContainers():void
		{
			_button = new Button();
			_button.label = "Test Button";
			addChild(_button);
		}
		
		override protected function draw():void
		{
			super.draw();
		}
		
		override public function dispose():void
		{
			super.dispose();
		}
	}
}