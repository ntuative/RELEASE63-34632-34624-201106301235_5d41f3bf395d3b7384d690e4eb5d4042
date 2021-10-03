package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1746:String;
      
      private var var_2456:int;
      
      private var _password:String;
      
      private var var_1515:int;
      
      private var var_2879:int;
      
      private var var_935:Array;
      
      private var var_2882:Array;
      
      private var var_2881:Boolean;
      
      private var var_2875:Boolean;
      
      private var var_2874:Boolean;
      
      private var var_2878:Boolean;
      
      private var var_2880:int;
      
      private var var_2877:int;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2881;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2881 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2875;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2875 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2874;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2874 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2878;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2878 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2880;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2880 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2877;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2877 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1746;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1746 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2456;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2456 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1515;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1515 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2879;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2879 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_935;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_935 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2882;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2882 = param1;
      }
   }
}
