package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_186:Number = 0;
      
      private var var_185:Number = 0;
      
      private var var_2930:Number = 0;
      
      private var var_2928:Number = 0;
      
      private var var_2927:Number = 0;
      
      private var var_2929:Number = 0;
      
      private var var_476:int = 0;
      
      private var var_2901:int = 0;
      
      private var var_360:Array;
      
      private var var_2926:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_360 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_186 = param3;
         this.var_185 = param4;
         this.var_2930 = param5;
         this.var_476 = param6;
         this.var_2901 = param7;
         this.var_2928 = param8;
         this.var_2927 = param9;
         this.var_2929 = param10;
         this.var_2926 = param11;
         this.var_360 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_186;
      }
      
      public function get z() : Number
      {
         return this.var_185;
      }
      
      public function get localZ() : Number
      {
         return this.var_2930;
      }
      
      public function get targetX() : Number
      {
         return this.var_2928;
      }
      
      public function get targetY() : Number
      {
         return this.var_2927;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2929;
      }
      
      public function get dir() : int
      {
         return this.var_476;
      }
      
      public function get dirHead() : int
      {
         return this.var_2901;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2926;
      }
      
      public function get actions() : Array
      {
         return this.var_360.slice();
      }
   }
}
