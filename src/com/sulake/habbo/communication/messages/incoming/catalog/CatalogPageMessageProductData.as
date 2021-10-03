package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_62:String = "i";
      
      public static const const_73:String = "s";
      
      public static const const_181:String = "e";
       
      
      private var var_1489:String;
      
      private var var_2580:int;
      
      private var var_989:String;
      
      private var var_1490:int;
      
      private var var_1818:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1489 = param1.readString();
         this.var_2580 = param1.readInteger();
         this.var_989 = param1.readString();
         this.var_1490 = param1.readInteger();
         this.var_1818 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1489;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2580;
      }
      
      public function get extraParam() : String
      {
         return this.var_989;
      }
      
      public function get productCount() : int
      {
         return this.var_1490;
      }
      
      public function get expiration() : int
      {
         return this.var_1818;
      }
   }
}
