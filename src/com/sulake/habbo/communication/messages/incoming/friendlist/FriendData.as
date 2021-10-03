package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1085:int;
      
      private var var_859:Boolean;
      
      private var var_1726:Boolean;
      
      private var _figure:String;
      
      private var var_1515:int;
      
      private var var_1725:String;
      
      private var var_1727:String;
      
      private var var_1724:String;
      
      private var var_2717:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1085 = param1.readInteger();
         this.var_859 = param1.readBoolean();
         this.var_1726 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1515 = param1.readInteger();
         this.var_1725 = param1.readString();
         this.var_1727 = param1.readString();
         this.var_1724 = param1.readString();
         this.var_2717 = param1.readString();
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
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1726;
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
      
      public function get facebookId() : String
      {
         return this.var_2717;
      }
   }
}
