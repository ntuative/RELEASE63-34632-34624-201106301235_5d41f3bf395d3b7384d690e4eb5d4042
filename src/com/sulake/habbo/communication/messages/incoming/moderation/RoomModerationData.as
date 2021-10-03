package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_419:int;
      
      private var var_2426:int;
      
      private var var_2427:Boolean;
      
      private var var_2316:int;
      
      private var _ownerName:String;
      
      private var var_141:RoomData;
      
      private var var_826:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_419 = param1.readInteger();
         this.var_2426 = param1.readInteger();
         this.var_2427 = param1.readBoolean();
         this.var_2316 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_141 = new RoomData(param1);
         this.var_826 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_141 != null)
         {
            this.var_141.dispose();
            this.var_141 = null;
         }
         if(this.var_826 != null)
         {
            this.var_826.dispose();
            this.var_826 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_419;
      }
      
      public function get userCount() : int
      {
         return this.var_2426;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2427;
      }
      
      public function get ownerId() : int
      {
         return this.var_2316;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_141;
      }
      
      public function get event() : RoomData
      {
         return this.var_826;
      }
   }
}
