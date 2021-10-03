package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_167:String = "ROE_MOUSE_CLICK";
      
      public static const const_183:String = "ROE_MOUSE_ENTER";
      
      public static const const_500:String = "ROE_MOUSE_MOVE";
      
      public static const const_186:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2127:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_596:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1776:String = "";
      
      private var var_2506:Boolean;
      
      private var var_2505:Boolean;
      
      private var var_2504:Boolean;
      
      private var var_2500:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1776 = param2;
         this.var_2506 = param5;
         this.var_2505 = param6;
         this.var_2504 = param7;
         this.var_2500 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1776;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2506;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2505;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2504;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2500;
      }
   }
}
