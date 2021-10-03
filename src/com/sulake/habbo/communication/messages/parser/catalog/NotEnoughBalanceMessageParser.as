package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_2131:int = 0;
      
      private var var_2130:int = 0;
      
      private var var_1717:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_2131;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_2130;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1717;
      }
      
      public function flush() : Boolean
      {
         this.var_2131 = 0;
         this.var_2130 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2131 = param1.readInteger();
         this.var_2130 = param1.readInteger();
         this.var_1717 = param1.readInteger();
         return true;
      }
   }
}
