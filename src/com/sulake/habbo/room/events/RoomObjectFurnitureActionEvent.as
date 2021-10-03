package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_533:String = "ROFCAE_DICE_OFF";
      
      public static const const_521:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_489:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_631:String = "ROFCAE_STICKIE";
      
      public static const const_515:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_638:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_632:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_557:String = "ROFCAE_SOUND_MACHINE_INIT";
      
      public static const const_636:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_570:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_595:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_494:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_620:String = "ROFCAE_JUKEBOX_START";
      
      public static const const_513:String = "ROFCAE_JUKEBOX_MACHINE_STOP";
      
      public static const const_492:String = "ROFCAE_JUKEBOX_DISPOSE";
      
      public static const const_311:String = "ROFCAE_MOUSE_BUTTON";
      
      public static const const_381:String = "ROFCAE_MOUSE_ARROW";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
