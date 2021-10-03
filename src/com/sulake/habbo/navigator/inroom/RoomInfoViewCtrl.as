package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_200:IWindowContainer;
      
      private var var_3079:int;
      
      private var var_389:RoomEventViewCtrl;
      
      private var var_391:Timer;
      
      private var var_157:RoomSettingsCtrl;
      
      private var var_286:RoomThumbnailCtrl;
      
      private var var_1044:TagRenderer;
      
      private var var_388:IWindowContainer;
      
      private var var_390:IWindowContainer;
      
      private var var_680:IWindowContainer;
      
      private var var_1959:IWindowContainer;
      
      private var var_1962:IWindowContainer;
      
      private var var_1270:IWindowContainer;
      
      private var var_945:ITextWindow;
      
      private var var_1047:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_839:ITextWindow;
      
      private var var_1271:ITextWindow;
      
      private var var_1046:ITextWindow;
      
      private var var_838:ITextWindow;
      
      private var var_1559:ITextWindow;
      
      private var var_287:IWindowContainer;
      
      private var var_836:IWindowContainer;
      
      private var var_1563:IWindowContainer;
      
      private var var_1960:ITextWindow;
      
      private var var_679:ITextWindow;
      
      private var var_1961:IWindow;
      
      private var var_1266:IContainerButtonWindow;
      
      private var var_1269:IContainerButtonWindow;
      
      private var var_1267:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1272:IContainerButtonWindow;
      
      private var var_1560:IButtonWindow;
      
      private var var_1561:IButtonWindow;
      
      private var var_1564:IButtonWindow;
      
      private var var_837:IWindowContainer;
      
      private var var_1268:ITextWindow;
      
      private var var_1045:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_840:IButtonWindow;
      
      private var var_1562:Boolean = false;
      
      private const const_758:int = 75;
      
      private const const_892:int = 3;
      
      private const const_744:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_389 = new RoomEventViewCtrl(this._navigator);
         this.var_157 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_286 = new RoomThumbnailCtrl(this._navigator);
         this.var_1044 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_157);
         this.var_391 = new Timer(6000,1);
         this.var_391.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_391)
         {
            this.var_391.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_391.reset();
            this.var_391 = null;
         }
         this._navigator = null;
         this.var_389 = null;
         this.var_157 = null;
         this.var_286 = null;
         if(this.var_1044)
         {
            this.var_1044.dispose();
            this.var_1044 = null;
         }
         this.var_200 = null;
         this.var_388 = null;
         this.var_390 = null;
         this.var_680 = null;
         this.var_1959 = null;
         this.var_1962 = null;
         this.var_1270 = null;
         this.var_945 = null;
         this.var_1047 = null;
         this._ownerName = null;
         this.var_839 = null;
         this.var_1271 = null;
         this.var_1046 = null;
         this.var_838 = null;
         this.var_1559 = null;
         this.var_287 = null;
         this.var_836 = null;
         this.var_1563 = null;
         this.var_1960 = null;
         this.var_679 = null;
         this.var_1961 = null;
         this.var_1266 = null;
         this.var_1269 = null;
         this.var_1267 = null;
         this._remFavouriteButton = null;
         this.var_1272 = null;
         this.var_1560 = null;
         this.var_1561 = null;
         this.var_1564 = null;
         this.var_837 = null;
         this.var_1268 = null;
         this.var_1045 = null;
         this._buttons = null;
         this.var_840 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_391.reset();
         this.var_389.active = true;
         this.var_157.active = false;
         this.var_286.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_391.reset();
         this.var_157.load(param1);
         this.var_157.active = true;
         this.var_389.active = false;
         this.var_286.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_157.active = true;
         this.var_389.active = false;
         this.var_286.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_391.reset();
         this.var_157.active = false;
         this.var_389.active = false;
         this.var_286.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1562 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_391.reset();
         this.var_389.active = false;
         this.var_157.active = false;
         this.var_286.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_892;
         this._window.y = this.const_758;
         if(this._navigator.configuration.getBoolean("club.membership.extend.promotion.enabled",false))
         {
            this._window.y = 91;
         }
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_200,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_200.height = Util.getLowestPoint(this.var_200);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_744;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_388);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_157.refresh(this.var_388);
         this.var_286.refresh(this.var_388);
         Util.moveChildrenToColumn(this.var_388,["room_details","room_buttons"],0,2);
         this.var_388.height = Util.getLowestPoint(this.var_388);
         this.var_388.visible = true;
         Logger.log("XORP: " + this.var_390.visible + ", " + this.var_1270.visible + ", " + this.var_680.visible + ", " + this.var_680.rectangle + ", " + this.var_388.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_287);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_389.refresh(this.var_287);
         if(Util.hasVisibleChildren(this.var_287) && !(this.var_157.active || this.var_286.active))
         {
            Util.moveChildrenToColumn(this.var_287,["event_details","event_buttons"],0,2);
            this.var_287.height = Util.getLowestPoint(this.var_287);
            this.var_287.visible = true;
         }
         else
         {
            this.var_287.visible = false;
         }
         Logger.log("EVENT: " + this.var_287.visible + ", " + this.var_287.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","HabboFriendBarCom_im_notification_icon_png") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_157.active && !this.var_286.active && !this.var_389.active)
         {
            this.var_837.visible = true;
            this.var_1045.text = this.getEmbedData();
         }
         else
         {
            this.var_837.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_157.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_840)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_840.visible = _loc1_;
            if(this.var_1562)
            {
               this.var_840.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_840.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_157.active || this.var_286.active)
         {
            return;
         }
         this.var_945.text = param1.roomName;
         this.var_945.height = this.var_945.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_839.text = param1.description;
         this.var_1044.refreshTags(this.var_390,param1.tags);
         this.var_839.visible = false;
         if(param1.description != "")
         {
            this.var_839.height = this.var_839.textHeight + 5;
            this.var_839.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1269,"facebook_logo_small",_loc3_,null,0);
         this.var_1269.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1266,"thumb_up",_loc4_,null,0);
         this.var_1266.visible = _loc4_;
         this.var_838.visible = !_loc4_;
         this.var_1559.visible = !_loc4_;
         this.var_1559.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_390,"home",param2,null,0);
         this._navigator.refreshButton(this.var_390,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_390,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_945.y,0);
         this.var_390.visible = true;
         this.var_390.height = Util.getLowestPoint(this.var_390);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_390.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_157.active || this.var_286.active)
         {
            return;
         }
         this.var_1047.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1047.height = this.var_1047.textHeight + 5;
         this.var_1271.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1271.height = this.var_1271.textHeight + 5;
         Util.moveChildrenToColumn(this.var_680,["public_space_name","public_space_desc"],this.var_1047.y,0);
         this.var_680.visible = true;
         this.var_680.height = Math.max(86,Util.getLowestPoint(this.var_680));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_389.active)
         {
            return;
         }
         this.var_1960.text = param1.eventName;
         this.var_679.text = param1.eventDescription;
         this.var_1044.refreshTags(this.var_836,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_679.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_679.height = this.var_679.textHeight + 5;
            this.var_679.y = Util.getLowestPoint(this.var_836) + 2;
            this.var_679.visible = true;
         }
         this.var_836.visible = true;
         this.var_836.height = Util.getLowestPoint(this.var_836);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_157.active || this.var_286.active)
         {
            return;
         }
         this.var_1560.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1267.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1272.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1270.visible = Util.hasVisibleChildren(this.var_1270);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_389.active)
         {
            return;
         }
         this.var_1561.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1564.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1563.visible = Util.hasVisibleChildren(this.var_1563);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_200 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_388 = IWindowContainer(this.find("room_info"));
         this.var_390 = IWindowContainer(this.find("room_details"));
         this.var_680 = IWindowContainer(this.find("public_space_details"));
         this.var_1959 = IWindowContainer(this.find("owner_name_cont"));
         this.var_1962 = IWindowContainer(this.find("rating_cont"));
         this.var_1270 = IWindowContainer(this.find("room_buttons"));
         this.var_945 = ITextWindow(this.find("room_name"));
         this.var_1047 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_839 = ITextWindow(this.find("room_desc"));
         this.var_1271 = ITextWindow(this.find("public_space_desc"));
         this.var_1046 = ITextWindow(this.find("owner_caption"));
         this.var_838 = ITextWindow(this.find("rating_caption"));
         this.var_1559 = ITextWindow(this.find("rating_txt"));
         this.var_287 = IWindowContainer(this.find("event_info"));
         this.var_836 = IWindowContainer(this.find("event_details"));
         this.var_1563 = IWindowContainer(this.find("event_buttons"));
         this.var_1960 = ITextWindow(this.find("event_name"));
         this.var_679 = ITextWindow(this.find("event_desc"));
         this.var_1269 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1266 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1961 = this.find("staff_pick_button");
         this.var_1267 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1272 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1560 = IButtonWindow(this.find("room_settings_button"));
         this.var_1561 = IButtonWindow(this.find("create_event_button"));
         this.var_1564 = IButtonWindow(this.find("edit_event_button"));
         this.var_837 = IWindowContainer(this.find("embed_info"));
         this.var_1268 = ITextWindow(this.find("embed_info_txt"));
         this.var_1045 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_840 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1267,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1560,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1272,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1561,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1564,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1045,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1266,this.onThumbUp);
         this.addMouseClickListener(this.var_1961,this.onStaffPick);
         this.addMouseClickListener(this.var_1269,this.onFacebookLike);
         this.addMouseClickListener(this.var_840,this.onZoomClick);
         this._navigator.refreshButton(this.var_1267,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1272,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_388,this.onHover);
         this.addMouseOverListener(this.var_287,this.onHover);
         this.var_1046.width = this.var_1046.textWidth;
         Util.moveChildrenToRow(this.var_1959,["owner_caption","owner_name"],this.var_1046.x,this.var_1046.y,3);
         this.var_838.width = this.var_838.textWidth;
         Util.moveChildrenToRow(this.var_1962,["rating_caption","rating_txt"],this.var_838.x,this.var_838.y,3);
         this.var_1268.height = this.var_1268.textHeight + 5;
         Util.moveChildrenToColumn(this.var_837,["embed_info_txt","embed_src_txt"],this.var_1268.y,2);
         this.var_837.height = Util.getLowestPoint(this.var_837) + 5;
         this.var_3079 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_1045.setSelection(0,this.var_1045.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.const_377));
         this.var_1562 = !this.var_1562;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_391.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_157 != null)
         {
            this.var_157.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
