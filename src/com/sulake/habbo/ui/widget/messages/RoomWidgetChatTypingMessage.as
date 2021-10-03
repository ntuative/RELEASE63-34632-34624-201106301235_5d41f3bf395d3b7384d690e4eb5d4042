package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_973:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_738:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_973);
         this.var_738 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_738;
      }
   }
}
