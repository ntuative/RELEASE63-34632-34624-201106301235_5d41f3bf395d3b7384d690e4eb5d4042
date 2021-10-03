package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1843:int;
      
      private var _name:String;
      
      private var var_1325:int;
      
      private var var_3030:int;
      
      private var var_2312:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_3029:int;
      
      private var var_3028:int;
      
      private var var_3027:int;
      
      private var var_2386:int;
      
      private var var_2316:int;
      
      private var _ownerName:String;
      
      private var var_597:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1843;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1325;
      }
      
      public function get maxLevel() : int
      {
         return this.var_3030;
      }
      
      public function get experience() : int
      {
         return this.var_2312;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_3029;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_3028;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_3027;
      }
      
      public function get respect() : int
      {
         return this.var_2386;
      }
      
      public function get ownerId() : int
      {
         return this.var_2316;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_597;
      }
      
      public function flush() : Boolean
      {
         this.var_1843 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1843 = param1.readInteger();
         this._name = param1.readString();
         this.var_1325 = param1.readInteger();
         this.var_3030 = param1.readInteger();
         this.var_2312 = param1.readInteger();
         this.var_3029 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_3028 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_3027 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2386 = param1.readInteger();
         this.var_2316 = param1.readInteger();
         this.var_597 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
