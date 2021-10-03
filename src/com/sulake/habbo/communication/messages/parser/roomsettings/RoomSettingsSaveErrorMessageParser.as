package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2120:int = 1;
      
      public static const const_2245:int = 2;
      
      public static const const_2298:int = 3;
      
      public static const const_2332:int = 4;
      
      public static const const_1883:int = 5;
      
      public static const const_2303:int = 6;
      
      public static const const_1769:int = 7;
      
      public static const const_1793:int = 8;
      
      public static const const_2194:int = 9;
      
      public static const const_1757:int = 10;
      
      public static const const_1780:int = 11;
      
      public static const const_1849:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1715:int;
      
      private var var_619:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1715 = param1.readInteger();
         this.var_619 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1715;
      }
      
      public function get info() : String
      {
         return this.var_619;
      }
   }
}
