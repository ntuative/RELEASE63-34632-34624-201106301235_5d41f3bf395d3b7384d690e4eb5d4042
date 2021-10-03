package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_658:String = "RWUAM_WHISPER_USER";
      
      public static const const_503:String = "RWUAM_IGNORE_USER";
      
      public static const const_645:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_401:String = "RWUAM_KICK_USER";
      
      public static const const_668:String = "RWUAM_BAN_USER";
      
      public static const const_556:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_571:String = "RWUAM_RESPECT_USER";
      
      public static const const_634:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_491:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_599:String = "RWUAM_START_TRADING";
      
      public static const const_738:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_547:String = "RWUAM_KICK_BOT";
      
      public static const const_553:String = "RWUAM_REPORT";
      
      public static const const_659:String = "RWUAM_PICKUP_PET";
      
      public static const const_1848:String = "RWUAM_TRAIN_PET";
      
      public static const const_674:String = " RWUAM_RESPECT_PET";
      
      public static const const_248:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_510:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
