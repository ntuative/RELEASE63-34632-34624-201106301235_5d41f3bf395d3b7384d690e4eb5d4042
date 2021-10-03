package com.sulake.habbo.room.object.visualization.room.mask
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   
   public class PlaneMaskBitmap
   {
      
      public static const const_58:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var var_446:IGraphicAsset = null;
      
      private var var_2565:Number = -1.0;
      
      private var _normalMaxX:Number = 1.0;
      
      private var var_2567:Number = -1.0;
      
      private var var_2566:Number = 1.0;
      
      public function PlaneMaskBitmap(param1:IGraphicAsset, param2:Number = -1.0, param3:Number = 1.0, param4:Number = -1.0, param5:Number = 1.0)
      {
         super();
         this.var_2565 = param2;
         this._normalMaxX = param3;
         this.var_2567 = param4;
         this.var_2566 = param5;
         this.var_446 = param1;
      }
      
      public function get asset() : IGraphicAsset
      {
         return this.var_446;
      }
      
      public function get normalMinX() : Number
      {
         return this.var_2565;
      }
      
      public function get normalMaxX() : Number
      {
         return this._normalMaxX;
      }
      
      public function get normalMinY() : Number
      {
         return this.var_2567;
      }
      
      public function get normalMaxY() : Number
      {
         return this.var_2566;
      }
      
      public function dispose() : void
      {
         this.var_446 = null;
      }
   }
}
