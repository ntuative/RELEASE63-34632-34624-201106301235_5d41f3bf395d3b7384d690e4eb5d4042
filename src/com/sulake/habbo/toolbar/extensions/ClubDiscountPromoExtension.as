package com.sulake.habbo.toolbar.extensions
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IIconWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetHabboClubExtendOfferMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.EventLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.inventory.events.HabboInventoryHabboClubEvent;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.toolbar.ExtensionFixedSlotsEnum;
   import com.sulake.habbo.toolbar.HabboToolbar;
   import com.sulake.habbo.toolbar.IExtensionView;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ClubDiscountPromoExtension
   {
      
      private static const const_693:String = "club_promo";
      
      private static const const_1482:int = 13;
      
      private static const const_1078:int = 14;
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assets:IAssetLibrary;
      
      private var _events:IEventDispatcher;
      
      private var _config:IHabboConfigurationManager;
      
      private var _localization:ICoreLocalizationManager;
      
      private var var_12:IHabboInventory;
      
      private var _catalog:IHabboCatalog;
      
      private var _connection:IConnection;
      
      private var var_741:IExtensionView;
      
      private var _view:IWindowContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_83:IBitmapWrapperWindow;
      
      private var var_655:Timer;
      
      private var var_1510:int = 0;
      
      private var var_1838:int;
      
      private var var_648:Timer;
      
      private var var_800:BitmapData;
      
      public function ClubDiscountPromoExtension(param1:HabboToolbar, param2:IHabboWindowManager, param3:IAssetLibrary, param4:IEventDispatcher, param5:IHabboConfigurationManager, param6:ICoreLocalizationManager, param7:IHabboInventory, param8:IHabboCatalog, param9:IConnection)
      {
         super();
         this._windowManager = param2;
         this._assets = param3;
         this._events = param4;
         this._config = param5;
         this._localization = param6;
         this.var_12 = param7;
         this._catalog = param8;
         this._connection = param9;
         this.var_741 = param1.extensionView;
         if(this.var_12)
         {
            this.var_12.events.addEventListener(HabboInventoryHabboClubEvent.HABBO_CLUB_CHANGED,this.onClubChanged);
         }
      }
      
      private function createWindow(param1:IAssetLibrary, param2:IHabboWindowManager) : IWindowContainer
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc3_:* = null;
         var _loc4_:XmlAsset = param1.getAssetByName("club_discount_promotion_xml") as XmlAsset;
         if(_loc4_)
         {
            _loc3_ = param2.buildFromXML(_loc4_.content as XML,1) as IWindowContainer;
            if(_loc3_)
            {
               this.var_83 = _loc3_.findChildByName("flashing_animation") as IBitmapWrapperWindow;
               if(this.var_83)
               {
                  _loc6_ = this._assets.getAssetByName("extend_hilite_png") as IAsset;
                  if(_loc6_)
                  {
                     this.var_800 = _loc6_.content as BitmapData;
                     if(this.var_800)
                     {
                        this.var_83.bitmap = this.var_800.clone();
                     }
                  }
                  this.var_83.visible = false;
               }
               _loc5_ = _loc3_.findChildByName("text_region") as IRegionWindow;
               if(_loc5_)
               {
                  _loc5_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.method_8);
               }
               this.assignState();
            }
         }
         return _loc3_;
      }
      
      private function destroyWindow() : void
      {
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
            this.var_83 = null;
         }
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_741)
            {
               this.var_741.detachExtension(const_693);
               this.var_741 = null;
            }
            this.animate(false);
            this.clearAnimation();
            this.destroyWindow();
            if(this.var_12)
            {
               this.var_12.events.removeEventListener(HabboInventoryHabboClubEvent.HABBO_CLUB_CHANGED,this.onClubChanged);
               this.var_12 = null;
            }
            this._catalog = null;
            this._localization = null;
            this._config = null;
            this._assets = null;
            this._events = null;
            this._disposed = true;
         }
      }
      
      private function method_8(param1:WindowMouseEvent) : void
      {
         if(this._connection)
         {
            this._connection.send(new EventLogMessageComposer("DiscountPromo","discount","client.club.extend.discount.clicked"));
            this._connection.send(new GetHabboClubExtendOfferMessageComposer());
         }
      }
      
      private function assignState() : void
      {
         switch(this.var_12.clubLevel)
         {
            case HabboClubLevelEnum.const_50:
               this.setText(this._localization.getKey("discount.bar.no.club.promo"));
               this.setClubIcon(const_1078);
               break;
            case HabboClubLevelEnum.const_34:
               this.setText(this._localization.getKey("discount.bar.hc.expiring"));
               this.setClubIcon(const_1482);
               break;
            case HabboClubLevelEnum.const_40:
               this.setText(this._localization.getKey("discount.bar.vip.expiring","Save 5 cr by extending your VIP subscription now!"));
               this.setClubIcon(const_1078);
         }
         this.animate(true);
      }
      
      private function onClubChanged(param1:HabboInventoryHabboClubEvent) : void
      {
         if(this.var_12.clubIsExpiring)
         {
            if(!this._view)
            {
               this._view = this.createWindow(this._assets,this._windowManager);
               this.assignState();
               this.var_741.attachExtension(const_693,this._view,ExtensionFixedSlotsEnum.const_1936);
            }
         }
         else
         {
            this.var_741.detachExtension(const_693);
            this.destroyWindow();
         }
      }
      
      private function setText(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this._view)
         {
            _loc2_ = this._view.findChildByName("promo_text") as ITextWindow;
            _loc3_ = this._view.findChildByName("promo_text_shadow") as ITextWindow;
            if(_loc2_)
            {
               _loc2_.text = param1;
            }
            if(_loc3_)
            {
               _loc3_.text = param1;
            }
         }
      }
      
      private function animate(param1:Boolean) : void
      {
         if(param1)
         {
            Logger.log("Animate window");
            if(this.var_648)
            {
               this.var_648.stop();
            }
            this.var_648 = new Timer(15000);
            this.var_648.addEventListener(TimerEvent.TIMER,this.onTriggerTimer);
            this.var_648.start();
         }
         else
         {
            if(this.var_648)
            {
               this.var_648.stop();
               this.var_648 = null;
            }
            this.clearAnimation();
         }
      }
      
      private function clearAnimation() : void
      {
         if(this.var_83)
         {
            this.var_83.visible = false;
            this.var_83.bitmap = null;
            this._view.invalidate();
            if(this.var_655)
            {
               this.var_655.stop();
               this.var_655 = null;
            }
         }
      }
      
      private function onTriggerTimer(param1:TimerEvent) : void
      {
         if(this.var_83)
         {
            if(this.var_83.context)
            {
               this.var_83.visible = true;
               this.resetAnimationVariables();
               this.startAnimationTimer();
            }
         }
      }
      
      private function resetAnimationVariables() : void
      {
         this.var_83.x = 3;
         this.var_83.y = 3;
         this.var_83.bitmap = this.var_800.clone();
         this.var_83.height = this._view.height - 6;
         this.var_83.width = this.var_83.bitmap.width;
         this.var_83.invalidate();
         this.var_1838 = this._view.width - 7 - this.var_83.bitmap.width;
         this.var_1510 = 0;
      }
      
      private function startAnimationTimer() : void
      {
         this.var_655 = new Timer(25,26);
         this.var_655.addEventListener(TimerEvent.TIMER,this.onAnimationTimer);
         this.var_655.addEventListener(TimerEvent.TIMER_COMPLETE,this.onAnimationTimerComplete);
         this.var_655.start();
      }
      
      private function onAnimationTimer(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         this.var_83.x = 3 + this.var_1510 / 20 * this.var_1838;
         if(this.var_83.x > this.var_1838)
         {
            _loc2_ = this._view.width - 4 - this.var_83.x;
            _loc3_ = new BitmapData(_loc2_,this.var_800.height);
            _loc3_.copyPixels(this.var_800,new Rectangle(0,0,_loc2_,this.var_800.height),new Point(0,0));
            this.var_83.bitmap = _loc3_;
            this.var_83.width = _loc2_;
         }
         this.var_83.invalidate();
         ++this.var_1510;
      }
      
      private function onAnimationTimerComplete(param1:TimerEvent) : void
      {
         this.clearAnimation();
      }
      
      private function setClubIcon(param1:int) : void
      {
         var _loc2_:* = null;
         if(this._view)
         {
            _loc2_ = this._view.findChildByName("club_icon") as IIconWindow;
            if(_loc2_)
            {
               _loc2_.style = param1;
               _loc2_.invalidate();
            }
         }
      }
   }
}
