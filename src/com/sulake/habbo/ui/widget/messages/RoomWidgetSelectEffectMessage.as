package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetSelectEffectMessage extends RoomWidgetMessage
   {
      
      public static const const_1344:String = "RWCM_MESSAGE_SELECT_EFFECT";
      
      public static const const_1171:String = "RWCM_MESSAGE_UNSELECT_EFFECT";
      
      public static const const_1162:String = "RWCM_MESSAGE_UNSELECT_ALL_EFFECTS";
       
      
      private var var_861:int;
      
      public function RoomWidgetSelectEffectMessage(param1:String, param2:int = -1)
      {
         super(param1);
         this.var_861 = param2;
      }
      
      public function get effectType() : int
      {
         return this.var_861;
      }
   }
}
