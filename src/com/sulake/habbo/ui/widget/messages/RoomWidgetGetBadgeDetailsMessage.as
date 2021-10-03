package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_981:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1455:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_981);
         this.var_1455 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1455;
      }
   }
}
