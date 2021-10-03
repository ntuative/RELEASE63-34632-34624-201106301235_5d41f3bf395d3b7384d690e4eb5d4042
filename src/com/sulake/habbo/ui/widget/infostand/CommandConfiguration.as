package com.sulake.habbo.ui.widget.infostand
{
   import flash.utils.Dictionary;
   
   public class CommandConfiguration
   {
       
      
      private var var_2676:Array;
      
      private var var_1348:Dictionary;
      
      public function CommandConfiguration(param1:Array, param2:Array)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.var_1348 = new Dictionary();
         super();
         this.var_2676 = param1;
         while(_loc3_ < param2.length)
         {
            _loc4_ = param2[_loc3_];
            this.var_1348[_loc4_] = true;
            _loc3_++;
         }
      }
      
      public function get allCommandIds() : Array
      {
         return this.var_2676;
      }
      
      public function isEnabled(param1:int) : Boolean
      {
         return this.var_1348[param1] != null;
      }
   }
}
