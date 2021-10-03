package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1294:int;
      
      private var var_1716:String;
      
      private var var_1156:int;
      
      private var var_1157:int;
      
      private var var_1717:int;
      
      private var var_1867:int;
      
      private var var_1319:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1294 = param1.readInteger();
         this.var_1716 = param1.readString();
         this.var_1156 = param1.readInteger();
         this.var_1157 = param1.readInteger();
         this.var_1717 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1319 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1319.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_1867 = param1.readInteger();
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
      
      public function get products() : Array
      {
         return this.var_1319;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1717;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1867;
      }
   }
}
