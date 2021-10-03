package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_799:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1771:String = "inventory_effects";
      
      public static const const_1321:String = "inventory_badges";
      
      public static const const_1918:String = "inventory_clothes";
      
      public static const const_1745:String = "inventory_furniture";
       
      
      private var var_2777:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_799);
         this.var_2777 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2777;
      }
   }
}
