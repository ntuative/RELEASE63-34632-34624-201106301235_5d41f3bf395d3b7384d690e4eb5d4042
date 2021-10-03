package com.sulake.habbo.friendbar.events
{
   import flash.events.Event;
   
   public class FriendRequestUpdateEvent extends Event
   {
      
      public static const const_811:String = "FBE_REQUESTS";
       
      
      public function FriendRequestUpdateEvent()
      {
         super(const_811,false,false);
      }
   }
}
