package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetMultiColoursEvent extends Event
   {
       
      
      private var var_1116:Array;
      
      private var var_2639:String;
      
      private var var_2640:String;
      
      private var var_2638:String;
      
      public function CatalogWidgetMultiColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_MULTI_COLOUR_ARRAY,param5,param6);
         this.var_1116 = param1;
         this.var_2639 = param2;
         this.var_2640 = param3;
         this.var_2638 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_1116;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2639;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2640;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2638;
      }
   }
}
