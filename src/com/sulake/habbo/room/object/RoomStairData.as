package com.sulake.habbo.room.object
{
   public class RoomStairData
   {
       
      
      private var var_2629:int;
      
      private var var_1951:Boolean;
      
      private var var_1952:Boolean;
      
      private var var_46:Boolean;
      
      public function RoomStairData(param1:int, param2:Boolean, param3:Boolean, param4:Boolean)
      {
         super();
         this.var_46 = param4;
         this.var_2629 = param1;
         this.var_1951 = param2;
         this.var_1952 = param3;
      }
      
      public function get stairHeight() : int
      {
         return this.var_2629;
      }
      
      public function get neighbourStairMin() : Boolean
      {
         return this.var_1951;
      }
      
      public function get neighbourStairMax() : Boolean
      {
         return this.var_1952;
      }
      
      public function get neighbourStair() : Boolean
      {
         return this.var_1951 || this.var_1952;
      }
      
      public function get border() : Boolean
      {
         return this.var_46;
      }
   }
}
