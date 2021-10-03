package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_187;
         param1["bound_to_parent_rect"] = const_101;
         param1["child_window"] = const_1318;
         param1["embedded_controller"] = const_1366;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_29;
         param1["internal_event_handling"] = const_1006;
         param1["mouse_dragging_target"] = const_261;
         param1["mouse_dragging_trigger"] = const_393;
         param1["mouse_scaling_target"] = const_338;
         param1["mouse_scaling_trigger"] = const_574;
         param1["horizontal_mouse_scaling_trigger"] = const_268;
         param1["vertical_mouse_scaling_trigger"] = const_305;
         param1["observe_parent_input_events"] = const_1353;
         param1["optimize_region_to_layout_size"] = const_643;
         param1["parent_window"] = const_1322;
         param1["relative_horizontal_scale_center"] = const_233;
         param1["relative_horizontal_scale_fixed"] = const_149;
         param1["relative_horizontal_scale_move"] = const_452;
         param1["relative_horizontal_scale_strech"] = const_431;
         param1["relative_scale_center"] = const_1222;
         param1["relative_scale_fixed"] = const_843;
         param1["relative_scale_move"] = const_1380;
         param1["relative_scale_strech"] = const_1187;
         param1["relative_vertical_scale_center"] = const_210;
         param1["relative_vertical_scale_fixed"] = const_168;
         param1["relative_vertical_scale_move"] = const_310;
         param1["relative_vertical_scale_strech"] = const_339;
         param1["on_resize_align_left"] = const_747;
         param1["on_resize_align_right"] = const_603;
         param1["on_resize_align_center"] = const_562;
         param1["on_resize_align_top"] = const_869;
         param1["on_resize_align_bottom"] = const_499;
         param1["on_resize_align_middle"] = const_608;
         param1["on_accommodate_align_left"] = const_1228;
         param1["on_accommodate_align_right"] = const_622;
         param1["on_accommodate_align_center"] = const_909;
         param1["on_accommodate_align_top"] = const_1332;
         param1["on_accommodate_align_bottom"] = const_630;
         param1["on_accommodate_align_middle"] = const_990;
         param1["route_input_events_to_parent"] = const_561;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1174;
         param1["scalable_with_mouse"] = const_1348;
         param1["reflect_horizontal_resize_to_parent"] = const_507;
         param1["reflect_vertical_resize_to_parent"] = const_612;
         param1["reflect_resize_to_parent"] = const_332;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1298;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
