package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2409:int;
      
      private var var_1586:String;
      
      private var _objId:int;
      
      private var var_1756:int;
      
      private var _category:int;
      
      private var var_2250:String;
      
      private var var_2770:Boolean;
      
      private var var_2771:Boolean;
      
      private var var_2772:Boolean;
      
      private var var_2560:Boolean;
      
      private var var_2392:int;
      
      private var var_1644:int;
      
      private var var_2080:String = "";
      
      private var var_1877:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2409 = param1;
         this.var_1586 = param2;
         this._objId = param3;
         this.var_1756 = param4;
         this._category = param5;
         this.var_2250 = param6;
         this.var_2770 = param7;
         this.var_2771 = param8;
         this.var_2772 = param9;
         this.var_2560 = param10;
         this.var_2392 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_2080 = param1;
         this.var_1644 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2409;
      }
      
      public function get itemType() : String
      {
         return this.var_1586;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1756;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2250;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2770;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2771;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2772;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2560;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2392;
      }
      
      public function get slotId() : String
      {
         return this.var_2080;
      }
      
      public function get songId() : int
      {
         return this.var_1877;
      }
      
      public function get extra() : int
      {
         return this.var_1644;
      }
   }
}
