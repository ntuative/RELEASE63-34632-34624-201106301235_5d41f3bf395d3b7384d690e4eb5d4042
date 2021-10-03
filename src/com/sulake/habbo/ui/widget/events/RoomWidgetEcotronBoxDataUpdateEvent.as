package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetEcotronBoxDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_69:String = "RWEBDUE_PACKAGEINFO";
      
      public static const const_96:String = "RWEBDUE_CONTENTS";
       
      
      private var var_237:int = -1;
      
      private var _text:String;
      
      private var var_26:Boolean;
      
      private var var_2354:BitmapData;
      
      public function RoomWidgetEcotronBoxDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_237 = param2;
         this._text = param3;
         this.var_26 = param4;
         this.var_2354 = param5;
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get controller() : Boolean
      {
         return this.var_26;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return this.var_2354;
      }
   }
}