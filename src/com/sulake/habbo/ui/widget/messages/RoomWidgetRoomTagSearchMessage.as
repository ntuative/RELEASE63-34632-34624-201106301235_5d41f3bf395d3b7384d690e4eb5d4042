package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_895:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2275:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_895);
         this.var_2275 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2275;
      }
   }
}
