package com.sulake.habbo.inventory.marketplace
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.BuyMarketplaceTokensMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceCanMakeOfferComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceConfigurationMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceItemStatsComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.MakeOfferMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.HabboInventory;
   import com.sulake.habbo.inventory.IInventoryModel;
   import com.sulake.habbo.inventory.furni.FurniModel;
   import com.sulake.habbo.inventory.items.FloorItem;
   import com.sulake.habbo.inventory.items.IItem;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class MarketplaceModel implements IInventoryModel
   {
       
      
      private var var_26:HabboInventory;
      
      private var _assets:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _roomEngine:IRoomEngine;
      
      private var _communication:IHabboCommunicationManager;
      
      private var _disposed:Boolean = false;
      
      private var var_248:IItem;
      
      private var var_1625:Boolean;
      
      private var var_2787:int;
      
      private var var_2089:int;
      
      private var var_2090:int;
      
      private var var_2786:int;
      
      private var var_2790:int;
      
      private var var_2789:int;
      
      private var var_2788:int;
      
      private var var_2840:int;
      
      private var var_2839:int;
      
      private var _view:MarketplaceView;
      
      private var var_1633:Boolean = false;
      
      public function MarketplaceModel(param1:HabboInventory, param2:IHabboWindowManager, param3:IHabboCommunicationManager, param4:IAssetLibrary, param5:IRoomEngine, param6:IHabboLocalizationManager, param7:IHabboConfigurationManager)
      {
         super();
         this.var_26 = param1;
         this._communication = param3;
         this._windowManager = param2;
         this._assets = param4;
         this._roomEngine = param5;
         this._view = new MarketplaceView(this,this._windowManager,this._assets,param5,param6,param7);
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this.var_1625 = param1;
      }
      
      public function set commission(param1:int) : void
      {
         this.var_2787 = param1;
      }
      
      public function set tokenBatchPrice(param1:int) : void
      {
         this.var_2089 = param1;
      }
      
      public function set tokenBatchSize(param1:int) : void
      {
         this.var_2090 = param1;
      }
      
      public function set offerMinPrice(param1:int) : void
      {
         this.var_2786 = param1;
      }
      
      public function set offerMaxPrice(param1:int) : void
      {
         this.var_2790 = param1;
      }
      
      public function set expirationHours(param1:int) : void
      {
         this.var_2789 = param1;
      }
      
      public function set averagePricePeriod(param1:int) : void
      {
         this.var_2788 = param1;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1625;
      }
      
      public function get commission() : int
      {
         return this.var_2787;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2089;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2090;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2786;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2790;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2789;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         this.var_26 = null;
         this._communication = null;
         this._windowManager = null;
         this._assets = null;
         this._roomEngine = null;
      }
      
      public function releaseItem() : void
      {
         if(this.var_26 != null && this.var_26.furniModel != null && this.var_248 != null)
         {
            this.var_26.furniModel.removeLockFrom(this.var_248.id);
            this.var_248 = null;
         }
      }
      
      public function startOfferMaking(param1:IItem) : void
      {
         if(this.var_248 != null || param1 == null)
         {
            return;
         }
         if(this.var_26 == null)
         {
            return;
         }
         var _loc2_:FurniModel = this.var_26.furniModel;
         if(_loc2_ == null)
         {
            return;
         }
         this.var_248 = param1;
         _loc2_.addLockTo(param1.id);
         var _loc3_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.send(new GetMarketplaceCanMakeOfferComposer());
      }
      
      public function buyMarketplaceTokens() : void
      {
         var _loc1_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.send(new BuyMarketplaceTokensMessageComposer());
         this.var_1633 = true;
      }
      
      public function makeOffer(param1:int) : void
      {
         if(this.var_248 == null)
         {
            return;
         }
         var _loc2_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:int = this.var_248 is FloorItem ? 1 : 2;
         _loc2_.send(new MakeOfferMessageComposer(param1,_loc3_,this.var_248.ref));
         this.releaseItem();
      }
      
      public function getItemStats() : void
      {
         if(this.var_248 == null)
         {
            return;
         }
         var _loc1_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:int = this.var_248 is FloorItem ? 1 : 2;
         this.var_2840 = _loc2_;
         this.var_2839 = this.var_248.type;
         _loc1_.send(new GetMarketplaceItemStatsComposer(_loc2_,this.var_248.type));
      }
      
      public function proceedOfferMaking(param1:int, param2:int) : void
      {
         this.var_1633 = false;
         switch(param1)
         {
            case 1:
               this._view.showMakeOffer(this.var_248);
               break;
            case 2:
               this._view.showAlert("${inventory.marketplace.no_trading_privilege.title}","${inventory.marketplace.no_trading_privilege.info}");
               break;
            case 3:
               this._view.showAlert("${inventory.marketplace.no_trading_pass.title}","${inventory.marketplace.no_trading_pass.info}");
               break;
            case 4:
               this._view.showBuyTokens(this.var_2089,this.var_2090);
         }
      }
      
      public function endOfferMaking(param1:int) : void
      {
         if(!this._view)
         {
            return;
         }
         this._view.showResult(param1);
      }
      
      public function setAveragePrice(param1:int, param2:int, param3:int) : void
      {
         if(param1 != this.var_2840 || param2 != this.var_2839)
         {
            return;
         }
         if(!this._view)
         {
            return;
         }
         this._view.updateAveragePrice(param3,this.var_2788);
      }
      
      public function onNotEnoughCredits() : void
      {
         if(this.var_1633)
         {
            this.var_1633 = false;
            this.releaseItem();
         }
      }
      
      public function requestInitialization(param1:int = 0) : void
      {
         var _loc2_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.send(new GetMarketplaceConfigurationMessageComposer());
      }
      
      public function getWindowContainer() : IWindowContainer
      {
         return null;
      }
      
      public function categorySwitch(param1:String) : void
      {
      }
      
      public function subCategorySwitch(param1:String) : void
      {
      }
      
      public function closingInventoryView() : void
      {
      }
   }
}
