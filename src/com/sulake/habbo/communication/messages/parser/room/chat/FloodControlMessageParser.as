package com.sulake.habbo.communication.messages.parser.room.chat
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FloodControlMessageParser implements IMessageParser
   {
       
      
      private var var_2009:int = 0;
      
      public function FloodControlMessageParser()
      {
         super();
      }
      
      public function get seconds() : int
      {
         return this.var_2009;
      }
      
      public function flush() : Boolean
      {
         this.var_2009 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_2009 = param1.readInteger();
         return true;
      }
   }
}
