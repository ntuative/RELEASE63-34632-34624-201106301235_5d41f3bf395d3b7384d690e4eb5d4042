package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_2031:String = "pricing_model_unknown";
      
      public static const const_419:String = "pricing_model_single";
      
      public static const const_406:String = "pricing_model_multi";
      
      public static const const_652:String = "pricing_model_bundle";
      
      public static const const_1783:String = "price_type_none";
      
      public static const const_1021:String = "price_type_credits";
      
      public static const const_1404:String = "price_type_activitypoints";
      
      public static const const_1170:String = "price_type_credits_and_activitypoints";
       
      
      private var var_760:String;
      
      private var var_1155:String;
      
      private var var_1294:int;
      
      private var var_1716:String;
      
      private var var_1156:int;
      
      private var var_1157:int;
      
      private var var_1717:int;
      
      private var var_364:ICatalogPage;
      
      private var var_613:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1867:int = 0;
      
      private var var_2279:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1294 = param1;
         this.var_1716 = param2;
         this.var_1156 = param3;
         this.var_1157 = param4;
         this.var_1717 = param5;
         this.var_364 = param8;
         this.var_1867 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1867;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_364;
      }
      
      public function get offerId() : int
      {
         return this.var_1294;
      }
      
      public function get localizationId() : String
      {
         return this.var_1716;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1156;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1157;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1717;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_613;
      }
      
      public function get pricingModel() : String
      {
         return this.var_760;
      }
      
      public function get priceType() : String
      {
         return this.var_1155;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2279;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2279 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1294 = 0;
         this.var_1716 = "";
         this.var_1156 = 0;
         this.var_1157 = 0;
         this.var_1717 = 0;
         this.var_364 = null;
         if(this.var_613 != null)
         {
            this.var_613.dispose();
            this.var_613 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_760)
         {
            case const_419:
               this.var_613 = new SingleProductContainer(this,param1);
               break;
            case const_406:
               this.var_613 = new MultiProductContainer(this,param1);
               break;
            case const_652:
               this.var_613 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_760);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_760 = const_419;
            }
            else
            {
               this.var_760 = const_406;
            }
         }
         else if(param1.length > 1)
         {
            this.var_760 = const_652;
         }
         else
         {
            this.var_760 = const_2031;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1156 > 0 && this.var_1157 > 0)
         {
            this.var_1155 = const_1170;
         }
         else if(this.var_1156 > 0)
         {
            this.var_1155 = const_1021;
         }
         else if(this.var_1157 > 0)
         {
            this.var_1155 = const_1404;
         }
         else
         {
            this.var_1155 = const_1783;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_364.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_613.products)
         {
            _loc4_ = this.var_364.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
