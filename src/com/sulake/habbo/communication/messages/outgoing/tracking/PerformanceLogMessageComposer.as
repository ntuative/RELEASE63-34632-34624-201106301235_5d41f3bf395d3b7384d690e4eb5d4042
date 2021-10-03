package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2429:int = 0;
      
      private var var_1671:String = "";
      
      private var var_2159:String = "";
      
      private var var_2575:String = "";
      
      private var var_2573:String = "";
      
      private var var_1905:int = 0;
      
      private var var_2572:int = 0;
      
      private var var_2574:int = 0;
      
      private var var_1670:int = 0;
      
      private var var_2576:int = 0;
      
      private var var_1669:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2429 = param1;
         this.var_1671 = param2;
         this.var_2159 = param3;
         this.var_2575 = param4;
         this.var_2573 = param5;
         if(param6)
         {
            this.var_1905 = 1;
         }
         else
         {
            this.var_1905 = 0;
         }
         this.var_2572 = param7;
         this.var_2574 = param8;
         this.var_1670 = param9;
         this.var_2576 = param10;
         this.var_1669 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2429,this.var_1671,this.var_2159,this.var_2575,this.var_2573,this.var_1905,this.var_2572,this.var_2574,this.var_1670,this.var_2576,this.var_1669];
      }
   }
}
