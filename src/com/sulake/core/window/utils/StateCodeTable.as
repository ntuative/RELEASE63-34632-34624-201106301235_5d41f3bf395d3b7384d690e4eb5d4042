package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowState;
   import flash.utils.Dictionary;
   
   public class StateCodeTable
   {
       
      
      public function StateCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["default"] = WindowState.const_100;
         param1["active"] = WindowState.const_87;
         param1["focused"] = WindowState.const_91;
         param1["hovering"] = WindowState.const_88;
         param1["selected"] = WindowState.const_57;
         param1["pressed"] = WindowState.const_98;
         param1["disabled"] = WindowState.const_90;
         param1["locked"] = WindowState.const_70;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
