package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_109:int = 1;
      
      public static const const_72:int = 2;
       
      
      private var var_1294:int;
      
      private var _furniId:int;
      
      private var var_2630:int;
      
      private var var_2250:String;
      
      private var var_2052:int;
      
      private var var_2290:int;
      
      private var var_2754:int;
      
      private var var_427:int;
      
      private var var_2631:int = -1;
      
      private var var_2053:int;
      
      private var var_47:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this.var_1294 = param1;
         this._furniId = param2;
         this.var_2630 = param3;
         this.var_2250 = param4;
         this.var_2052 = param5;
         this.var_427 = param6;
         this.var_2290 = param7;
         this.var_2053 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_47)
         {
            this.var_47.dispose();
            this.var_47 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this.var_1294;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2630;
      }
      
      public function get stuffData() : String
      {
         return this.var_2250;
      }
      
      public function get price() : int
      {
         return this.var_2052;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2290;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_47 != null)
         {
            this.var_47.dispose();
         }
         this.var_47 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2754 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2754;
      }
      
      public function get status() : int
      {
         return this.var_427;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2631;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2631 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_2052 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1294 = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_2053;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2053 = param1;
      }
   }
}
