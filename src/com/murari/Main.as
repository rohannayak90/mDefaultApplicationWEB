package com.murari
{
	import com.murari.screens.M2NScreenDefault;
	
	import feathers.controls.ScreenNavigator;
	import feathers.controls.ScreenNavigatorItem;
	import feathers.events.FeathersEventType;
	import feathers.motion.transitions.ScreenSlidingStackTransitionManager;
	import feathers.themes.MetalWorksMobileTheme;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Main extends Sprite
	{
		private var _screenNavigator:ScreenNavigator;
		
		
		public function Main()
		{
			super();
			this.alpha = 0.99;
			this.addEventListener(Event.ADDED_TO_STAGE, _onAddedToStage);
		}
		
		private function _onAddedToStage():void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, _onAddedToStage);
			
			new MetalWorksMobileTheme();
			
			_screenNavigator = new ScreenNavigator();
			_screenNavigator.width = stage.stageWidth;
			_screenNavigator.height = stage.stageHeight;
			addChild(_screenNavigator);
			
			_addScreensToNavigator();
		}
		
		private function _addScreensToNavigator():void
		{
			_screenNavigator.addScreen(M2NScreenDefault.SCREEN_NAME, new ScreenNavigatorItem(M2NScreenDefault, 
				{
					
				}
			));
			
			_screenNavigator.addEventListener(FeathersEventType.TRANSITION_COMPLETE, _onScreenNavigatorScreenTransitionComplete);
			
			var _screenTransitionManager:ScreenSlidingStackTransitionManager = new ScreenSlidingStackTransitionManager(_screenNavigator);
			_screenTransitionManager.duration = 0.5;
			
			_showScreen();
		}
		
		private function _showScreen():void
		{
			_screenNavigator.showScreen(M2NScreenDefault.SCREEN_NAME);
		}
		
		private function _onScreenNavigatorScreenTransitionComplete():void
		{
			try
			{
				var __currentScreen:Object = _screenNavigator.activeScreen as Object;
				__currentScreen.initializeScreen();
			} 
			catch(error:Error) 
			{
				trace ("Error");
			}
		}
	}
}