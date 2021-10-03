package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3082:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_666:IWindowContext;
      
      private var var_1298:IMouseDraggingService;
      
      private var var_1301:IMouseScalingService;
      
      private var var_1302:IMouseListenerService;
      
      private var var_1297:IFocusManagerService;
      
      private var var_1300:IToolTipAgentService;
      
      private var var_1299:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3082 = 0;
         this._root = param2;
         this.var_666 = param1;
         this.var_1298 = new WindowMouseDragger(param2);
         this.var_1301 = new WindowMouseScaler(param2);
         this.var_1302 = new WindowMouseListener(param2);
         this.var_1297 = new FocusManager(param2);
         this.var_1300 = new WindowToolTipAgent(param2);
         this.var_1299 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1298 != null)
         {
            this.var_1298.dispose();
            this.var_1298 = null;
         }
         if(this.var_1301 != null)
         {
            this.var_1301.dispose();
            this.var_1301 = null;
         }
         if(this.var_1302 != null)
         {
            this.var_1302.dispose();
            this.var_1302 = null;
         }
         if(this.var_1297 != null)
         {
            this.var_1297.dispose();
            this.var_1297 = null;
         }
         if(this.var_1300 != null)
         {
            this.var_1300.dispose();
            this.var_1300 = null;
         }
         if(this.var_1299 != null)
         {
            this.var_1299.dispose();
            this.var_1299 = null;
         }
         this._root = null;
         this.var_666 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1298;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1301;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1302;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1297;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1300;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1299;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
