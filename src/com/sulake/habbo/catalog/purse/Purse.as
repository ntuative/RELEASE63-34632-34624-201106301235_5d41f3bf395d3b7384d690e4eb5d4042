package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1906:int = 0;
      
      private var var_1535:Dictionary;
      
      private var var_1918:int = 0;
      
      private var var_1917:int = 0;
      
      private var var_2588:Boolean = false;
      
      private var var_2586:int = 0;
      
      private var var_2585:int = 0;
      
      private var var_2587:Boolean = false;
      
      public function Purse()
      {
         this.var_1535 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1906;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1906 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1918;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1918 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1917;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1917 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1918 > 0 || this.var_1917 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2588;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2587;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2587 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2588 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2586;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2586 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2585;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2585 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1535;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1535 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1535[param1];
      }
   }
}
