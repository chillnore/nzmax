// ActionScript file
package ui
{
	import mx.collections.ArrayCollection;
	
	import nz.Transport;
	import nz.component.Script;
	import nz.manager.FuncMan;
	import nz.support.IControl;
	
	import spark.components.Group;
	
	import ui.frames.BackFrame;
	import ui.frames.ObjectFrame;
	import ui.frames.PlayFrame;

	public class Core extends Group implements IControl
	{
		public const version:String = "0.8.1.9"
		/**@private */
		public const field:String = "Control";
		/**@private */
		public var func:FuncMan//储存function设定;
		protected var pageList:Object;
		private var _objectmode:Boolean;
		private var pushObjectionModeEnabled:Boolean;
		private var pluginList:Object;
		/**@private */
		public var currentFrame:String;
		private var oldFrame:String;
		public var objectDp:ArrayCollection;
		public var roleDp:ArrayCollection;
		public function Core()
		{
			pageList = new Object();
			objectDp = new ArrayCollection();
			roleDp = new ArrayCollection();
			
			Transport.CreateTypeList["ObjectItem"] = ObjectPaneItem;
			Transport.CreateTypeList["RoleItem"] = RolePaneItem;
			Transport.DisplayRoot["ObjectPane"] = objectDp;
			Transport.DisplayRoot["RolePane"] = roleDp;
			
			objectModeEnabled = false;
			
			
			func = new FuncMan();
			//func.setFunc("gotoPage", { type:Script.SingleParams} );
			func.setFunc("chooseSet", { type:Script.ComplexParams, down:false, progress:false } );
			func.setFunc("pushObjection", { type:Script.SingleParams, down:false, progress:false } );
			func.setFunc("cleanPushObjection", { type:Script.NoParams } );
			
		}
		public function pushPage(page:String):void
		{
			
		}
		public function popPage():void
		{
			
		}
		public function replacePage(page:String):void
		{
			
		}
		public function set playButtonEnabled(value:Boolean):void
		{
			
		}
		public function set objectModeEnabled(value:Boolean):void
		{
		}
	}
}