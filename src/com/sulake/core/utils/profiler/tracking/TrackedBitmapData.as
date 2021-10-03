package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2137:int = 16777215;
      
      public static const const_1180:int = 8191;
      
      public static const const_1315:int = 8191;
      
      public static const const_2222:int = 1;
      
      public static const const_1374:int = 1;
      
      public static const const_1192:int = 1;
      
      private static var var_587:uint = 0;
      
      private static var var_586:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1180)
         {
            param2 = const_1180;
         }
         else if(param2 < const_1374)
         {
            param2 = const_1374;
         }
         if(param3 > const_1315)
         {
            param3 = const_1315;
         }
         else if(param3 < const_1192)
         {
            param3 = const_1192;
         }
         super(param2,param3,param4,param5);
         ++var_587;
         var_586 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_587;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_586;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_586 -= width * height * 4;
            --var_587;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
