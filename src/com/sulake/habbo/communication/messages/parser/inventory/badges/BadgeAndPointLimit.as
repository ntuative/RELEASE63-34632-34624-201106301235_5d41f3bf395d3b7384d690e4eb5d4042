package com.sulake.habbo.communication.messages.parser.inventory.badges
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class BadgeAndPointLimit
   {
       
      
      private var var_1982:String;
      
      private var var_1819:int;
      
      public function BadgeAndPointLimit(param1:String, param2:IMessageDataWrapper)
      {
         super();
         this.var_1982 = "ACH_" + param1 + param2.readInteger();
         this.var_1819 = param2.readInteger();
      }
      
      public function get badgeId() : String
      {
         return this.var_1982;
      }
      
      public function get limit() : int
      {
         return this.var_1819;
      }
   }
}
