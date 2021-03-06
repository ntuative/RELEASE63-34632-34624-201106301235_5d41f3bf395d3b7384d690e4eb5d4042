package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
      
      private static var var_1172:int = 0;
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1085:int;
      
      private var var_859:Boolean;
      
      private var _allowFollow:Boolean;
      
      private var _figure:String;
      
      private var var_1515:int;
      
      private var var_1725:String;
      
      private var var_1727:String;
      
      private var var_1724:String;
      
      private var var_1105:Vector.<FriendNotification>;
      
      private var var_2310:int = -1;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1724 = param3;
         this.var_1725 = param4;
         this.var_1085 = param5;
         this.var_859 = param6;
         this._allowFollow = param7;
         this._figure = param8;
         this.var_1515 = param9;
         this.var_1727 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1085;
      }
      
      public function get online() : Boolean
      {
         return this.var_859;
      }
      
      public function get allowFollow() : Boolean
      {
         return this._allowFollow;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1515;
      }
      
      public function get motto() : String
      {
         return this.var_1725;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1727;
      }
      
      public function get realName() : String
      {
         return this.var_1724;
      }
      
      public function get logEventId() : int
      {
         return this.var_2310;
      }
      
      public function get notifications() : Vector.<FriendNotification>
      {
         if(!this.var_1105)
         {
            this.var_1105 = new Vector.<FriendNotification>();
         }
         return this.var_1105;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_1085 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_859 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this._allowFollow = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1515 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1725 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1727 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1724 = param1;
      }
      
      public function set logEventId(param1:int) : void
      {
         this.var_2310 = param1;
      }
      
      public function getNextLogEventId() : int
      {
         return ++var_1172;
      }
   }
}
