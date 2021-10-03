package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1294:int;
      
      private var var_1747:String;
      
      private var var_2052:int;
      
      private var _upgrade:Boolean;
      
      private var var_2821:Boolean;
      
      private var var_2819:int;
      
      private var var_2817:int;
      
      private var var_2820:int;
      
      private var var_2818:int;
      
      private var var_2822:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1294 = param1.readInteger();
         this.var_1747 = param1.readString();
         this.var_2052 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2821 = param1.readBoolean();
         this.var_2819 = param1.readInteger();
         this.var_2817 = param1.readInteger();
         this.var_2820 = param1.readInteger();
         this.var_2818 = param1.readInteger();
         this.var_2822 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1294;
      }
      
      public function get productCode() : String
      {
         return this.var_1747;
      }
      
      public function get price() : int
      {
         return this.var_2052;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2821;
      }
      
      public function get periods() : int
      {
         return this.var_2819;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2817;
      }
      
      public function get year() : int
      {
         return this.var_2820;
      }
      
      public function get month() : int
      {
         return this.var_2818;
      }
      
      public function get day() : int
      {
         return this.var_2822;
      }
   }
}
