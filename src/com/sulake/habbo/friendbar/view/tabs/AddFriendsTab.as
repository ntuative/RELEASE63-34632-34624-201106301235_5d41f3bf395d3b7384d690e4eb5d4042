package com.sulake.habbo.friendbar.view.tabs
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import flash.display.BitmapData;
   
   public class AddFriendsTab extends Tab
   {
      
      protected static const ICON:String = "icon";
      
      protected static const TEXT:String = "text";
      
      protected static const const_462:String = "header";
      
      protected static const const_1037:String = "label";
      
      protected static const BUTTON:String = "button";
      
      private static const const_1707:String = "add_friends_tab_xml";
      
      private static const const_1708:String = "find_friends_icon_png";
      
      private static var var_1121:int = -1;
      
      private static const const_75:uint = 6907230;
      
      private static const const_1095:uint = 9209986;
      
      private static const POOL:Array = [];
      
      private static const const_483:Array = [];
       
      
      public function AddFriendsTab()
      {
         super();
      }
      
      public static function allocate() : AddFriendsTab
      {
         var _loc1_:AddFriendsTab = false ? POOL.pop() : new AddFriendsTab();
         _loc1_.var_165 = false;
         _loc1_._window = _loc1_.allocateEntityWindow();
         return _loc1_;
      }
      
      public function allocateEntityWindow() : IWindowContainer
      {
         var _loc1_:IWindowContainer = false ? const_483.pop() : WINDOWING.buildFromXML(ASSETS.getAssetByName(const_1707).content as XML) as IWindowContainer;
         var _loc2_:IRegionWindow = IRegionWindow(_loc1_.findChildByName(const_462));
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseOver);
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,onMouseOut);
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseOver);
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,onMouseOut);
         if(var_1121 < 0)
         {
            var_1121 = _loc1_.height;
         }
         _loc1_.height = name_1;
         var _loc3_:IBitmapWrapperWindow = _loc1_.findChildByName(ICON) as IBitmapWrapperWindow;
         _loc3_.disposesBitmap = false;
         _loc3_.bitmap = ASSETS.getAssetByName(const_1708).content as BitmapData;
         var _loc4_:IWindow = _loc1_.findChildByName(BUTTON);
         _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClick);
         var _loc5_:IWindow = _loc1_.findChildByName(TEXT);
         _loc5_.visible = false;
         return _loc1_;
      }
      
      private function releaseEntityWindow(param1:IWindowContainer) : void
      {
         var _loc2_:* = null;
         if(param1 && !param1.disposed)
         {
            param1.procedure = null;
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseOver);
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,onMouseOut);
            _loc2_ = IRegionWindow(param1.findChildByName(const_462));
            _loc2_.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            _loc2_.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseOver);
            _loc2_.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,onMouseOut);
            param1.findChildByName(BUTTON).removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClick);
            param1.findChildByName(TEXT).visible = false;
            param1.width = name_2;
            param1.height = name_1;
            if(const_483.indexOf(param1) == -1)
            {
               const_483.push(param1);
            }
         }
      }
      
      override public function select(param1:Boolean) : void
      {
         if(!selected)
         {
            _window.height = var_1121;
            _window.y = 0 - (0 - name_1);
            _window.findChildByName(TEXT).visible = true;
            super.select(param1);
         }
      }
      
      override public function deselect(param1:Boolean) : void
      {
         if(selected)
         {
            _window.y = 0;
            _window.height = name_1;
            _window.findChildByName(TEXT).visible = false;
            super.deselect(param1);
         }
      }
      
      override public function recycle() : void
      {
         if(!disposed)
         {
            if(!var_165)
            {
               if(_window)
               {
                  this.releaseEntityWindow(_window);
                  _window = null;
               }
               var_165 = true;
               POOL.push(this);
            }
         }
      }
      
      override protected function expose() : void
      {
         super.expose();
         ITextWindow(_window.findChildByTag(const_1037)).underline = exposed;
         _window.color = !!exposed ? uint(const_1095) : uint(const_75);
      }
      
      override protected function conceal() : void
      {
         super.conceal();
         ITextWindow(_window.findChildByTag(const_1037)).underline = exposed;
         _window.color = !!exposed ? uint(const_1095) : uint(const_75);
      }
      
      private function onButtonClick(param1:WindowMouseEvent) : void
      {
         if(!disposed && !recycled)
         {
            var_357.findNewFriends();
            this.deselect(true);
         }
      }
   }
}
