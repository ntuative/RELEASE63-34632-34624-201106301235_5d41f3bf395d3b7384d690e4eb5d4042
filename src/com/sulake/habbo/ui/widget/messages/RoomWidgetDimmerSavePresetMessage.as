package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_752:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2528:int;
      
      private var var_2529:int;
      
      private var _color:uint;
      
      private var var_1335:int;
      
      private var var_2530:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_752);
         this.var_2528 = param1;
         this.var_2529 = param2;
         this._color = param3;
         this.var_1335 = param4;
         this.var_2530 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2528;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2529;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1335;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2530;
      }
   }
}
