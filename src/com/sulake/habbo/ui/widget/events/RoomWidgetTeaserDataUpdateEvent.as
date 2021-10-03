package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_538:String = "RWTDUE_TEASER_DATA";
      
      public static const const_761:String = "RWTDUE_GIFT_DATA";
      
      public static const const_967:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_237:int;
      
      private var _data:String;
      
      private var var_427:int;
      
      private var var_209:String;
      
      private var var_2293:String;
      
      private var var_2291:Boolean;
      
      private var var_1689:int = 0;
      
      private var var_2292:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_427;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2293;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2291;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2292;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1689;
      }
      
      public function set status(param1:int) : void
      {
         this.var_427 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2293 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2291 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2292 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_237 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_209;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_209 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1689 = param1;
      }
   }
}
