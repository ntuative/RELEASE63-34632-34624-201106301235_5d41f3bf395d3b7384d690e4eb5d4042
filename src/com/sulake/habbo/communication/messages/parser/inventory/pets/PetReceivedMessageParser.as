package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1798:Boolean;
      
      private var var_983:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1798 = param1.readBoolean();
         this.var_983 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1798 + ", " + this.var_983.id + ", " + this.var_983.name + ", " + this.var_983.type + ", " + this.var_983.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1798;
      }
      
      public function get pet() : PetData
      {
         return this.var_983;
      }
   }
}
