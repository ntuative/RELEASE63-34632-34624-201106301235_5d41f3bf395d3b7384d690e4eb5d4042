package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2307:int;
      
      private var var_2466:int;
      
      private var var_1156:int;
      
      private var var_1157:int;
      
      private var var_1717:int;
      
      private var var_2467:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2307 = param1.readInteger();
         this.var_2466 = param1.readInteger();
         this.var_1156 = param1.readInteger();
         this.var_1157 = param1.readInteger();
         this.var_1717 = param1.readInteger();
         this.var_2467 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2307;
      }
      
      public function get charges() : int
      {
         return this.var_2466;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1156;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1157;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2467;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1717;
      }
   }
}
