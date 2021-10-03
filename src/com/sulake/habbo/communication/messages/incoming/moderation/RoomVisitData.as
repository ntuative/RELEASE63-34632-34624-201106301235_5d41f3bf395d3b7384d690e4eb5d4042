package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1829:Boolean;
      
      private var _roomId:int;
      
      private var var_945:String;
      
      private var var_2672:int;
      
      private var var_2671:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1829 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_945 = param1.readString();
         this.var_2672 = param1.readInteger();
         this.var_2671 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1829;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_945;
      }
      
      public function get enterHour() : int
      {
         return this.var_2672;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2671;
      }
   }
}
