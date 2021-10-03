package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class SellablePetBreedsParser implements IMessageParser
   {
       
      
      private var var_1747:String = "";
      
      private var var_1458:Array;
      
      public function SellablePetBreedsParser()
      {
         this.var_1458 = [];
         super();
      }
      
      public function get productCode() : String
      {
         return this.var_1747;
      }
      
      public function get sellableBreeds() : Array
      {
         return this.var_1458.slice();
      }
      
      public function flush() : Boolean
      {
         this.var_1747 = "";
         this.var_1458 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1747 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1458.push(new SellablePetBreedData(param1));
            _loc3_++;
         }
         return true;
      }
   }
}
