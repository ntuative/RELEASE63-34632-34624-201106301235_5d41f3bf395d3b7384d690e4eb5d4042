package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_826;
         param1["badge"] = const_856;
         param1["bitmap"] = const_402;
         param1["border"] = const_996;
         param1["border_notify"] = const_1856;
         param1["bubble"] = const_947;
         param1["bubble_pointer_up"] = const_1256;
         param1["bubble_pointer_right"] = const_1255;
         param1["bubble_pointer_down"] = const_1283;
         param1["bubble_pointer_left"] = const_1194;
         param1["button"] = const_540;
         param1["button_thick"] = const_1004;
         param1["button_icon"] = const_1842;
         param1["button_group_left"] = const_918;
         param1["button_group_center"] = const_824;
         param1["button_group_right"] = const_1025;
         param1["canvas"] = const_836;
         param1["checkbox"] = const_904;
         param1["closebutton"] = const_1401;
         param1["container"] = const_442;
         param1["container_button"] = const_986;
         param1["display_object_wrapper"] = const_828;
         param1["dropmenu"] = const_564;
         param1["dropmenu_item"] = const_516;
         param1["frame"] = const_446;
         param1["frame_notify"] = const_1794;
         param1["header"] = const_1020;
         param1["html"] = const_1323;
         param1["icon"] = const_1244;
         param1["itemgrid"] = const_1219;
         param1["itemgrid_horizontal"] = const_505;
         param1["itemgrid_vertical"] = const_910;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_433;
         param1["itemlist_vertical"] = const_428;
         param1["label"] = const_732;
         param1["maximizebox"] = const_1896;
         param1["menu"] = const_1902;
         param1["menu_item"] = const_2036;
         param1["submenu"] = const_1407;
         param1["minimizebox"] = const_2017;
         param1["notify"] = const_1786;
         param1["null"] = const_855;
         param1["password"] = const_768;
         param1["radiobutton"] = const_783;
         param1["region"] = const_331;
         param1["restorebox"] = const_1820;
         param1["scaler"] = const_618;
         param1["scaler_horizontal"] = const_2027;
         param1["scaler_vertical"] = const_1733;
         param1["scrollbar_horizontal"] = const_519;
         param1["scrollbar_vertical"] = const_848;
         param1["scrollbar_slider_button_up"] = const_1316;
         param1["scrollbar_slider_button_down"] = const_1384;
         param1["scrollbar_slider_button_left"] = const_1164;
         param1["scrollbar_slider_button_right"] = const_1341;
         param1["scrollbar_slider_bar_horizontal"] = const_1220;
         param1["scrollbar_slider_bar_vertical"] = const_1179;
         param1["scrollbar_slider_track_horizontal"] = const_1305;
         param1["scrollbar_slider_track_vertical"] = const_1354;
         param1["scrollable_itemlist"] = const_1949;
         param1["scrollable_itemlist_vertical"] = const_627;
         param1["scrollable_itemlist_horizontal"] = const_1369;
         param1["selector"] = const_740;
         param1["selector_list"] = const_939;
         param1["submenu"] = const_1407;
         param1["tab_button"] = const_911;
         param1["tab_container_button"] = const_1304;
         param1["tab_context"] = const_395;
         param1["tab_content"] = const_1235;
         param1["tab_selector"] = const_965;
         param1["text"] = const_730;
         param1["input"] = const_803;
         param1["toolbar"] = const_1853;
         param1["tooltip"] = const_451;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
