package com.murari.interfaces
{
	public interface IMyScreen
	{
		/**
		 * The function is called at the screenTransitionComplete event.</br>
		 * The Screen's own initialize function isn't used because it causes problem with transitions.</br>
		 * So after the transition completes, the containers are created.</br>
		 * 
		 * @author Murari M.
		 * @created 12th Dec'14
		 * @modified 16th Dec'14
		 */
		function initializeScreen():void;
	}
}