package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1918:int = 0;
      
      private var var_1917:int = 0;
      
      private var var_2627:int = 0;
      
      private var var_2626:Boolean = false;
      
      private var var_2588:Boolean = false;
      
      private var var_2587:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1918 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1917 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2627 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2626 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2588 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2587 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1918;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1917;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2627;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2626;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2588;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2587;
      }
   }
}
