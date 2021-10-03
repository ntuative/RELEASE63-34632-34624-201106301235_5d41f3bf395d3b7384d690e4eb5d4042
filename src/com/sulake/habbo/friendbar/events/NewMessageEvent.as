package com.sulake.habbo.friendbar.events
{
   import flash.events.Event;
   
   public class NewMessageEvent extends Event
   {
      
      public static const const_756:String = "FBE_MESSAGE";
       
      
      public var notify:Boolean;
      
      public var senderId:int;
      
      public function NewMessageEvent(param1:Boolean, param2:int)
      {
         super(const_756,false,false);
         this.notify = param1;
         this.senderId = param2;
      }
   }
}
