package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1294:int;
      
      private var var_2720:Boolean;
      
      private var var_2390:Boolean;
      
      private var var_2719:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1294 = param1.readInteger();
         this.var_2720 = param1.readBoolean();
         this.var_2719 = param1.readInteger();
         this.var_2390 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1294;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2720;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2390;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2719;
      }
   }
}
