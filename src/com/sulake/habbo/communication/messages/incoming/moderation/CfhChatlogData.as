package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1713:int;
      
      private var var_2274:int;
      
      private var var_1676:int;
      
      private var var_2273:int;
      
      private var var_141:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1713 = param1.readInteger();
         this.var_2274 = param1.readInteger();
         this.var_1676 = param1.readInteger();
         this.var_2273 = param1.readInteger();
         this.var_141 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1713);
      }
      
      public function get callId() : int
      {
         return this.var_1713;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2274;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1676;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2273;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_141;
      }
   }
}
