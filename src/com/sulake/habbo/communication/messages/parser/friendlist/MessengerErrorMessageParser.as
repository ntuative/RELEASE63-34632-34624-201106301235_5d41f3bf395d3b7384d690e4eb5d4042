package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MessengerErrorMessageParser implements IMessageParser
   {
       
      
      private var var_2811:int;
      
      private var var_1715:int;
      
      public function MessengerErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2811 = param1.readInteger();
         this.var_1715 = param1.readInteger();
         return true;
      }
      
      public function get clientMessageId() : int
      {
         return this.var_2811;
      }
      
      public function get errorCode() : int
      {
         return this.var_1715;
      }
   }
}
