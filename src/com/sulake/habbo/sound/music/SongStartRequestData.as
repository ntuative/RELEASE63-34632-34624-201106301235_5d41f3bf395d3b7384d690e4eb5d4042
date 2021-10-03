package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1877:int;
      
      private var var_1932:Number;
      
      private var var_2613:Number;
      
      private var var_2612:int;
      
      private var var_2615:Number;
      
      private var var_2614:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1877 = param1;
         this.var_1932 = param2;
         this.var_2613 = param3;
         this.var_2615 = param4;
         this.var_2614 = param5;
         this.var_2612 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1877;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1932 < 0)
         {
            return 0;
         }
         return this.var_1932 + (getTimer() - this.var_2612) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2613;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2615;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2614;
      }
   }
}
