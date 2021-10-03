package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1373:String = "M";
      
      public static const const_1862:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_186:Number = 0;
      
      private var var_185:Number = 0;
      
      private var var_476:int = 0;
      
      private var _name:String = "";
      
      private var var_1703:int = 0;
      
      private var var_1089:String = "";
      
      private var _figure:String = "";
      
      private var var_2703:String = "";
      
      private var var_2342:int;
      
      private var var_2699:int = 0;
      
      private var var_2702:String = "";
      
      private var var_2701:int = 0;
      
      private var var_2700:int = 0;
      
      private var var_2858:String = "";
      
      private var var_206:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_206 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_206)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_186;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_206)
         {
            this.var_186 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_185;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_206)
         {
            this.var_185 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_476;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_206)
         {
            this.var_476 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_206)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1703;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_206)
         {
            this.var_1703 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1089;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_206)
         {
            this.var_1089 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_206)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2703;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_206)
         {
            this.var_2703 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2342;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_206)
         {
            this.var_2342 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2699;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_206)
         {
            this.var_2699 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2702;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_206)
         {
            this.var_2702 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2701;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_206)
         {
            this.var_2701 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2700;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_206)
         {
            this.var_2700 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2858;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_206)
         {
            this.var_2858 = param1;
         }
      }
   }
}
