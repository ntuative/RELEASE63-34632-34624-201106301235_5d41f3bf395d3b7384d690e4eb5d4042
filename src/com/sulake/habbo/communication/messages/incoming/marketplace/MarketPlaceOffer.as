package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1294:int;
      
      private var _furniId:int;
      
      private var var_2630:int;
      
      private var var_2250:String;
      
      private var var_2052:int;
      
      private var var_427:int;
      
      private var var_2631:int = -1;
      
      private var var_2290:int;
      
      private var var_2053:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1294 = param1;
         this._furniId = param2;
         this.var_2630 = param3;
         this.var_2250 = param4;
         this.var_2052 = param5;
         this.var_427 = param6;
         this.var_2631 = param7;
         this.var_2290 = param8;
         this.var_2053 = param9;
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
      
      public function get status() : int
      {
         return this.var_427;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2631;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2290;
      }
      
      public function get offerCount() : int
      {
         return this.var_2053;
      }
   }
}
