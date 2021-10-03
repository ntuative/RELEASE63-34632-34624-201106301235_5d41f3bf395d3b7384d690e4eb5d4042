package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_775:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1254:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2288:String = "RWOCM_PIXELS";
      
      public static const const_2325:String = "RWOCM_CREDITS";
      
      public static const const_2267:String = "RWOCM_SHELLS";
       
      
      private var var_2296:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_775);
         this.var_2296 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2296;
      }
   }
}
