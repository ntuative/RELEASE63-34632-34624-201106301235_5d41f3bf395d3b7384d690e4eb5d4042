package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_114:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_162:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_784:int = 2;
      
      public static const const_766:int = 3;
      
      public static const const_1868:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1725:String = "";
      
      private var var_2342:int;
      
      private var var_2699:int = 0;
      
      private var var_2700:int = 0;
      
      private var _figure:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_252:Array;
      
      private var var_1455:int = 0;
      
      private var var_2402:String = "";
      
      private var var_2401:int = 0;
      
      private var var_2400:int = 0;
      
      private var var_2144:Boolean = false;
      
      private var var_1724:String = "";
      
      private var var_2256:Boolean = false;
      
      private var var_2710:Boolean = false;
      
      private var var_2711:Boolean = true;
      
      private var var_1222:int = 0;
      
      private var var_2705:Boolean = false;
      
      private var var_2709:Boolean = false;
      
      private var var_2706:Boolean = false;
      
      private var var_2708:Boolean = false;
      
      private var var_2707:Boolean = false;
      
      private var var_2704:Boolean = false;
      
      private var var_2712:int = 0;
      
      private var var_2147:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_252 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1725 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1725;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2342 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2342;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2699 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2699;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2700 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2700;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_252 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_252;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1455 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1455;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2402 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2402;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2710 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2710;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1222 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1222;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2705 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2705;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2709 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2709;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2706 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2706;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2708 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2708;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2707 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2707;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2704 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2704;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2712 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2712;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2711 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2711;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_2147 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_2147;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2401 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2401;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2400 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2400;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_2144 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_2144;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1724 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1724;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2256 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2256;
      }
   }
}
