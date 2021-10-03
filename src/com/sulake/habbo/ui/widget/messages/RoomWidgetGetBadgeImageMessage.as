package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_881:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_1982:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_881);
         this.var_1982 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_1982;
      }
   }
}
