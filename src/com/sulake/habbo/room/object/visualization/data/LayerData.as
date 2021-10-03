package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_1029:String = "";
      
      public static const const_456:int = 0;
      
      public static const const_541:int = 255;
      
      public static const const_832:Boolean = false;
      
      public static const const_626:int = 0;
      
      public static const const_625:int = 0;
      
      public static const const_457:int = 0;
      
      public static const const_1355:int = 1;
      
      public static const const_1392:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2275:String = "";
      
      private var var_1734:int = 0;
      
      private var var_2498:int = 255;
      
      private var var_2922:Boolean = false;
      
      private var var_2923:int = 0;
      
      private var var_2924:int = 0;
      
      private var var_2925:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2275 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2275;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1734 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1734;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2498 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2498;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2922 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2922;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2923 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2923;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2924 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2924;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2925 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2925;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
