package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_419:int;
      
      private var var_826:Boolean;
      
      private var var_945:String;
      
      private var _ownerName:String;
      
      private var var_2456:int;
      
      private var var_2426:int;
      
      private var var_2966:int;
      
      private var var_1746:String;
      
      private var var_2969:int;
      
      private var var_2458:Boolean;
      
      private var var_787:int;
      
      private var var_1515:int;
      
      private var var_2968:String;
      
      private var var_935:Array;
      
      private var var_2970:RoomThumbnailData;
      
      private var var_2881:Boolean;
      
      private var var_2967:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_935 = new Array();
         super();
         this.var_419 = param1.readInteger();
         this.var_826 = param1.readBoolean();
         this.var_945 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2456 = param1.readInteger();
         this.var_2426 = param1.readInteger();
         this.var_2966 = param1.readInteger();
         this.var_1746 = param1.readString();
         this.var_2969 = param1.readInteger();
         this.var_2458 = param1.readBoolean();
         this.var_787 = param1.readInteger();
         this.var_1515 = param1.readInteger();
         this.var_2968 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_935.push(_loc4_);
            _loc3_++;
         }
         this.var_2970 = new RoomThumbnailData(param1);
         this.var_2881 = param1.readBoolean();
         this.var_2967 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_935 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_419;
      }
      
      public function get event() : Boolean
      {
         return this.var_826;
      }
      
      public function get roomName() : String
      {
         return this.var_945;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2456;
      }
      
      public function get userCount() : int
      {
         return this.var_2426;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2966;
      }
      
      public function get description() : String
      {
         return this.var_1746;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2969;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2458;
      }
      
      public function get score() : int
      {
         return this.var_787;
      }
      
      public function get categoryId() : int
      {
         return this.var_1515;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2968;
      }
      
      public function get tags() : Array
      {
         return this.var_935;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2970;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2881;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2967;
      }
   }
}
