package
{
	import com.murari.Main;
	
	import flash.display.Sprite;
	
	import starling.core.Starling;
	
	public class mDefaultApplication extends Sprite
	{
		private var _starling:Starling;
		
		
		public function mDefaultApplication()
		{
			_starling = new Starling(Main, stage);
			_starling.start();
		}
	}
}