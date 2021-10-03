package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomEntryData;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2099:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_233:MsgWithRequestId;
      
      private var var_728:RoomEventData;
      
      private var var_2945:Boolean;
      
      private var var_2941:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2539:int;
      
      private var var_305:GuestRoomData;
      
      private var var_1110:PublicRoomShortData;
      
      private var var_2939:int;
      
      private var var_2944:Boolean;
      
      private var var_2937:int;
      
      private var var_2942:Boolean;
      
      private var var_2133:int;
      
      private var var_2943:Boolean;
      
      private var var_1530:Array;
      
      private var var_1659:Array;
      
      private var var_2938:int;
      
      private var var_1658:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1359:Boolean;
      
      private var var_2946:int;
      
      private var var_2947:Boolean;
      
      private var var_2940:int = 0;
      
      private var var_2134:OfficialRoomEntryData;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1530 = new Array();
         this.var_1659 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_305 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_305 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1110 = null;
         this.var_305 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1110 = param1.publicSpace;
            this.var_728 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_728 != null)
         {
            this.var_728.dispose();
            this.var_728 = null;
         }
         if(this.var_1110 != null)
         {
            this.var_1110.dispose();
            this.var_1110 = null;
         }
         if(this.var_305 != null)
         {
            this.var_305.dispose();
            this.var_305 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_305 != null)
         {
            this.var_305.dispose();
         }
         this.var_305 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_728 != null)
         {
            this.var_728.dispose();
         }
         this.var_728 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_233 != null && this.var_233 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_233 != null && this.var_233 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_233 != null && this.var_233 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_233 = param1;
         this.var_2134 = param1.ad;
         this.var_1359 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_233 = param1;
         this.var_1359 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_233 = param1;
         this.var_1359 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_233 == null)
         {
            return;
         }
         this.var_233.dispose();
         this.var_233 = null;
      }
      
      public function set adRoom(param1:OfficialRoomEntryData) : void
      {
         this.var_2134 = param1;
      }
      
      public function get adRoom() : OfficialRoomEntryData
      {
         return this.var_2134;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_233 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_233 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_233 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_728;
      }
      
      public function get avatarId() : int
      {
         return this.var_2539;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2945;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2941;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_305;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1110;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2944;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2937;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_2133;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2942;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2946;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2939;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2943;
      }
      
      public function get adIndex() : int
      {
         return this.var_2940;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2947;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2539 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2937 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2944 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2945 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2941 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2942 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_2133 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2946 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2939 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2943 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2940 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2947 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1530 = param1;
         this.var_1659 = new Array();
         for each(_loc2_ in this.var_1530)
         {
            if(_loc2_.visible)
            {
               this.var_1659.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1530;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1659;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2938 = param1.limit;
         this.var_1658 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1658 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_305.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_305 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_305.flatId;
         return this.var_2133 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1658 >= this.var_2938;
      }
      
      public function startLoading() : void
      {
         this.var_1359 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1359;
      }
   }
}
