package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_2006:String = "WE_DESTROY";
      
      public static const const_349:String = "WE_DESTROYED";
      
      public static const const_1738:String = "WE_OPEN";
      
      public static const const_1969:String = "WE_OPENED";
      
      public static const const_2003:String = "WE_CLOSE";
      
      public static const const_2041:String = "WE_CLOSED";
      
      public static const const_1815:String = "WE_FOCUS";
      
      public static const const_330:String = "WE_FOCUSED";
      
      public static const const_2034:String = "WE_UNFOCUS";
      
      public static const const_1934:String = "WE_UNFOCUSED";
      
      public static const const_1953:String = "WE_ACTIVATE";
      
      public static const const_619:String = "WE_ACTIVATED";
      
      public static const const_1817:String = "WE_DEACTIVATE";
      
      public static const const_648:String = "WE_DEACTIVATED";
      
      public static const const_357:String = "WE_SELECT";
      
      public static const const_47:String = "WE_SELECTED";
      
      public static const const_633:String = "WE_UNSELECT";
      
      public static const const_616:String = "WE_UNSELECTED";
      
      public static const const_1746:String = "WE_LOCK";
      
      public static const const_2014:String = "WE_LOCKED";
      
      public static const const_1857:String = "WE_UNLOCK";
      
      public static const const_1782:String = "WE_UNLOCKED";
      
      public static const const_893:String = "WE_ENABLE";
      
      public static const const_286:String = "WE_ENABLED";
      
      public static const const_995:String = "WE_DISABLE";
      
      public static const const_255:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_424:String = "WE_RELOCATED";
      
      public static const const_1406:String = "WE_RESIZE";
      
      public static const const_39:String = "WE_RESIZED";
      
      public static const const_2009:String = "WE_MINIMIZE";
      
      public static const const_1814:String = "WE_MINIMIZED";
      
      public static const const_1781:String = "WE_MAXIMIZE";
      
      public static const const_1734:String = "WE_MAXIMIZED";
      
      public static const const_1785:String = "WE_RESTORE";
      
      public static const const_1964:String = "WE_RESTORED";
      
      public static const const_531:String = "WE_CHILD_ADDED";
      
      public static const const_438:String = "WE_CHILD_REMOVED";
      
      public static const const_203:String = "WE_CHILD_RELOCATED";
      
      public static const const_143:String = "WE_CHILD_RESIZED";
      
      public static const const_328:String = "WE_CHILD_ACTIVATED";
      
      public static const const_667:String = "WE_PARENT_ADDED";
      
      public static const const_1881:String = "WE_PARENT_REMOVED";
      
      public static const const_1846:String = "WE_PARENT_RELOCATED";
      
      public static const const_575:String = "WE_PARENT_RESIZED";
      
      public static const const_1209:String = "WE_PARENT_ACTIVATED";
      
      public static const const_151:String = "WE_OK";
      
      public static const const_534:String = "WE_CANCEL";
      
      public static const const_117:String = "WE_CHANGE";
      
      public static const const_555:String = "WE_SCROLL";
      
      public static const const_108:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_748:IWindow;
      
      protected var var_1144:Boolean;
      
      protected var var_505:Boolean;
      
      protected var var_165:Boolean;
      
      protected var var_749:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_748 = param3;
         _loc5_.var_505 = param4;
         _loc5_.var_165 = false;
         _loc5_.var_749 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_748;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_505;
      }
      
      public function recycle() : void
      {
         if(this.var_165)
         {
            throw new Error("Event already recycled!");
         }
         this.var_748 = null;
         this._window = null;
         this.var_165 = true;
         this.var_1144 = false;
         this.var_749.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1144;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1144 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1144;
      }
      
      public function stopPropagation() : void
      {
         this.var_1144 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1144 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_505 + " window: " + this._window + " }";
      }
   }
}
