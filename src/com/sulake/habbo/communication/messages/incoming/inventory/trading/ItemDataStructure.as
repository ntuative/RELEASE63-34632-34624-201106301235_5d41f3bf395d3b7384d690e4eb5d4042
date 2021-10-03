package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2337:int;
      
      private var var_1586:String;
      
      private var var_2341:int;
      
      private var var_2339:int;
      
      private var _category:int;
      
      private var var_2250:String;
      
      private var var_1644:int;
      
      private var var_2335:int;
      
      private var var_2340:int;
      
      private var var_2338:int;
      
      private var var_2336:int;
      
      private var var_2334:Boolean;
      
      private var var_3101:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2337 = param1;
         this.var_1586 = param2;
         this.var_2341 = param3;
         this.var_2339 = param4;
         this._category = param5;
         this.var_2250 = param6;
         this.var_1644 = param7;
         this.var_2335 = param8;
         this.var_2340 = param9;
         this.var_2338 = param10;
         this.var_2336 = param11;
         this.var_2334 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2337;
      }
      
      public function get itemType() : String
      {
         return this.var_1586;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2341;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2339;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2250;
      }
      
      public function get extra() : int
      {
         return this.var_1644;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2335;
      }
      
      public function get creationDay() : int
      {
         return this.var_2340;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2338;
      }
      
      public function get creationYear() : int
      {
         return this.var_2336;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2334;
      }
      
      public function get songID() : int
      {
         return this.var_1644;
      }
   }
}
