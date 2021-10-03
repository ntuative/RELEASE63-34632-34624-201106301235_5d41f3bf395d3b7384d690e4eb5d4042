package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2978:String;
      
      private var var_2153:String;
      
      private var var_2977:String;
      
      private var var_2154:Boolean;
      
      private var var_2152:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2978 = String(param1["set-type"]);
         this.var_2153 = String(param1["flipped-set-type"]);
         this.var_2977 = String(param1["remove-set-type"]);
         this.var_2154 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_2152 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_2152;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_2152 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2978;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_2153;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2977;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_2154;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_2154 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_2153 = param1;
      }
   }
}
