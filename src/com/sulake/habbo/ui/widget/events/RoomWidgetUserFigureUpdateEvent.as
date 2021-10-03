package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserFigureUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_190:String = "RWUTUE_USER_FIGURE";
       
      
      private var _userId:int;
      
      private var var_47:BitmapData;
      
      private var var_2399:Boolean;
      
      private var var_2088:String = "";
      
      private var var_2342:int;
      
      public function RoomWidgetUserFigureUpdateEvent(param1:int, param2:BitmapData, param3:Boolean, param4:String, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_190,param6,param7);
         this._userId = param1;
         this.var_47 = param2;
         this.var_2399 = param3;
         this.var_2088 = param4;
         this.var_2342 = param5;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function get isOwnUser() : Boolean
      {
         return this.var_2399;
      }
      
      public function get customInfo() : String
      {
         return this.var_2088;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2342;
      }
   }
}
