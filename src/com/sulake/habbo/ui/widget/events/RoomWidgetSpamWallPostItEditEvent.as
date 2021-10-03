package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetSpamWallPostItEditEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_592:String = "RWSWPUE_OPEN_EDITOR";
       
      
      private var var_237:int;
      
      private var var_473:String;
      
      private var var_1415:String;
      
      public function RoomWidgetSpamWallPostItEditEvent(param1:String, param2:int, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.var_237 = param2;
         this.var_473 = param3;
         this.var_1415 = param4;
      }
      
      public function get location() : String
      {
         return this.var_473;
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get objectType() : String
      {
         return this.var_1415;
      }
   }
}
