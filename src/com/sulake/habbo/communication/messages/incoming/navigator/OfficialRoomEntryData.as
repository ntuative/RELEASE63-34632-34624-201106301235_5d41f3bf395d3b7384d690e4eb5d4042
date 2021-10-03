package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1278:int = 1;
      
      public static const const_794:int = 2;
      
      public static const const_982:int = 3;
      
      public static const const_1796:int = 4;
       
      
      private var _index:int;
      
      private var var_2632:String;
      
      private var var_2634:String;
      
      private var var_2636:Boolean;
      
      private var var_2635:String;
      
      private var var_1020:String;
      
      private var var_2633:int;
      
      private var var_2426:int;
      
      private var _type:int;
      
      private var var_2275:String;
      
      private var var_1042:GuestRoomData;
      
      private var var_1041:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2632 = param1.readString();
         this.var_2634 = param1.readString();
         this.var_2636 = param1.readInteger() == 1;
         this.var_2635 = param1.readString();
         this.var_1020 = param1.readString();
         this.var_2633 = param1.readInteger();
         this.var_2426 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1278)
         {
            this.var_2275 = param1.readString();
         }
         else if(this._type == const_982)
         {
            this.var_1041 = new PublicRoomData(param1);
         }
         else if(this._type == const_794)
         {
            this.var_1042 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1042 != null)
         {
            this.var_1042.dispose();
            this.var_1042 = null;
         }
         if(this.var_1041 != null)
         {
            this.var_1041.dispose();
            this.var_1041 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2632;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2634;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2636;
      }
      
      public function get picText() : String
      {
         return this.var_2635;
      }
      
      public function get picRef() : String
      {
         return this.var_1020;
      }
      
      public function get folderId() : int
      {
         return this.var_2633;
      }
      
      public function get tag() : String
      {
         return this.var_2275;
      }
      
      public function get userCount() : int
      {
         return this.var_2426;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1042;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1041;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1278)
         {
            return 0;
         }
         if(this.type == const_794)
         {
            return this.var_1042.maxUserCount;
         }
         if(this.type == const_982)
         {
            return this.var_1041.maxUsers;
         }
         return 0;
      }
   }
}
