package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2352:Boolean;
      
      private var var_2353:int;
      
      private var var_1761:Array;
      
      private var var_851:Array;
      
      private var var_850:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2352;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2353;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1761;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_851;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_850;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1761 = [];
         this.var_851 = [];
         this.var_850 = [];
         this.var_2352 = param1.readBoolean();
         this.var_2353 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1761.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_851.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_850.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
