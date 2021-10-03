package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2921:int;
      
      private var var_2919:int;
      
      private var var_2918:int;
      
      private var var_2920:String;
      
      private var var_1728:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2921 = param1.readInteger();
         this.var_2919 = param1.readInteger();
         this.var_2918 = param1.readInteger();
         this.var_2920 = param1.readString();
         this.var_1728 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2921;
      }
      
      public function get minute() : int
      {
         return this.var_2919;
      }
      
      public function get chatterId() : int
      {
         return this.var_2918;
      }
      
      public function get chatterName() : String
      {
         return this.var_2920;
      }
      
      public function get msg() : String
      {
         return this.var_1728;
      }
   }
}
