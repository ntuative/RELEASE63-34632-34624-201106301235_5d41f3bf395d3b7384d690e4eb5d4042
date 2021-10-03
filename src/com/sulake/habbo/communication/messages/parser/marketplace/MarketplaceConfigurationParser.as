package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1625:Boolean;
      
      private var var_2787:int;
      
      private var var_2089:int;
      
      private var var_2090:int;
      
      private var var_2790:int;
      
      private var var_2786:int;
      
      private var var_2789:int;
      
      private var var_2788:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
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
      
      public function get averagePricePeriod() : int
      {
         return this.var_2788;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1625 = param1.readBoolean();
         this.var_2787 = param1.readInteger();
         this.var_2089 = param1.readInteger();
         this.var_2090 = param1.readInteger();
         this.var_2786 = param1.readInteger();
         this.var_2790 = param1.readInteger();
         this.var_2789 = param1.readInteger();
         this.var_2788 = param1.readInteger();
         return true;
      }
   }
}
