package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2724:String;
      
      private var var_2725:Class;
      
      private var var_2726:Class;
      
      private var var_2013:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2724 = param1;
         this.var_2725 = param2;
         this.var_2726 = param3;
         if(rest == null)
         {
            this.var_2013 = new Array();
         }
         else
         {
            this.var_2013 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2724;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2725;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2726;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_2013;
      }
   }
}
