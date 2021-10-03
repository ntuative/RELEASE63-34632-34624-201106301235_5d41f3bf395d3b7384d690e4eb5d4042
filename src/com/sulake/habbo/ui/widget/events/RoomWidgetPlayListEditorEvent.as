package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetPlayListEditorEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_864:String = "RWPLEE_SHOW_PLAYLIST_EDITOR";
      
      public static const const_945:String = "RWPLEE_HIDE_PLAYLIST_EDITOR";
      
      public static const const_859:String = "RWPLEE_INVENTORY_UPDATED";
      
      public static const const_821:String = "RWPLEE_SONG_DISK_INVENTORY_UPDATED";
      
      public static const const_105:String = "RWPLEE_PLAY_LIST_UPDATED";
      
      public static const const_155:String = "RWPLEE_PLAY_LIST_FULL";
       
      
      private var _furniId:int;
      
      public function RoomWidgetPlayListEditorEvent(param1:String, param2:int = -1, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._furniId = param2;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
   }
}
