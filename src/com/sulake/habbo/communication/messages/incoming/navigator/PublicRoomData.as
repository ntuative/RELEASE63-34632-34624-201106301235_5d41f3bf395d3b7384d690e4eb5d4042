package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2527:String;
      
      private var var_2324:int;
      
      private var var_2331:int;
      
      private var var_2475:String;
      
      private var var_2948:int;
      
      private var var_2187:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2527 = param1.readString();
         this.var_2324 = param1.readInteger();
         this.var_2331 = param1.readInteger();
         this.var_2475 = param1.readString();
         this.var_2948 = param1.readInteger();
         this.var_2187 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2527;
      }
      
      public function get unitPort() : int
      {
         return this.var_2324;
      }
      
      public function get worldId() : int
      {
         return this.var_2331;
      }
      
      public function get castLibs() : String
      {
         return this.var_2475;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2948;
      }
      
      public function get nodeId() : int
      {
         return this.var_2187;
      }
   }
}
