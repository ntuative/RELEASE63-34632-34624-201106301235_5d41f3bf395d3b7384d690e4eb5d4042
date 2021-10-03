package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2290:int;
      
      private var var_2286:int;
      
      private var var_2288:int;
      
      private var _dayOffsets:Array;
      
      private var var_1729:Array;
      
      private var var_1730:Array;
      
      private var var_2289:int;
      
      private var var_2287:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2290;
      }
      
      public function get offerCount() : int
      {
         return this.var_2286;
      }
      
      public function get historyLength() : int
      {
         return this.var_2288;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1729;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1730;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2289;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2287;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2290 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2286 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2288 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1729 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1730 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2289 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2287 = param1;
      }
   }
}
