package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1843:int;
      
      private var var_1325:int;
      
      private var var_2317:int;
      
      private var var_2312:int;
      
      private var var_2311:int;
      
      private var _energy:int;
      
      private var var_2314:int;
      
      private var _nutrition:int;
      
      private var var_2313:int;
      
      private var var_2316:int;
      
      private var _ownerName:String;
      
      private var var_2386:int;
      
      private var var_597:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1843;
      }
      
      public function get level() : int
      {
         return this.var_1325;
      }
      
      public function get levelMax() : int
      {
         return this.var_2317;
      }
      
      public function get experience() : int
      {
         return this.var_2312;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2311;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2314;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2313;
      }
      
      public function get ownerId() : int
      {
         return this.var_2316;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2386;
      }
      
      public function get age() : int
      {
         return this.var_597;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1843 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1325 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2317 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2312 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2311 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2314 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2313 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2316 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2386 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_597 = param1;
      }
   }
}
