package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1584:int = 3;
      
      private static const const_1480:int = 2;
      
      private static const const_1481:int = 1;
      
      private static const const_1479:int = 15;
       
      
      private var var_345:Array;
      
      private var var_1206:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_345 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1480)
         {
            this.var_345 = new Array();
            this.var_345.push(const_1481);
            this.var_1206 = const_1479;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1206 > 0)
         {
            --this.var_1206;
         }
         if(this.var_1206 == 0)
         {
            if(this.var_345.length > 0)
            {
               super.setAnimation(this.var_345.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
