package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_1089:String;
      
      private var var_2782:String;
      
      private var var_1724:String;
      
      private var var_2779:int;
      
      private var var_2780:String;
      
      private var var_2781:int;
      
      private var var_2778:int;
      
      private var var_2468:int;
      
      private var var_1222:int;
      
      private var var_806:int;
      
      private var var_2533:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_1089 = param1.readString();
         this.var_2782 = param1.readString();
         this.var_1724 = param1.readString();
         this.var_2779 = param1.readInteger();
         this.var_2780 = param1.readString();
         this.var_2781 = param1.readInteger();
         this.var_2778 = param1.readInteger();
         this.var_2468 = param1.readInteger();
         this.var_1222 = param1.readInteger();
         this.var_806 = param1.readInteger();
         this.var_2533 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_1089;
      }
      
      public function get customData() : String
      {
         return this.var_2782;
      }
      
      public function get realName() : String
      {
         return this.var_1724;
      }
      
      public function get tickets() : int
      {
         return this.var_2779;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2780;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2781;
      }
      
      public function get directMail() : int
      {
         return this.var_2778;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2468;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1222;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_806;
      }
      
      public function get identityId() : int
      {
         return this.var_2533;
      }
   }
}
