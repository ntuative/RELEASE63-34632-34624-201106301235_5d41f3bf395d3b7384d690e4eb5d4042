package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2539:int;
      
      private var var_2019:String;
      
      private var var_2740:String;
      
      private var var_3023:Boolean;
      
      private var var_3024:Boolean;
      
      private var var_3025:int;
      
      private var var_2739:String;
      
      private var var_3022:String;
      
      private var var_1724:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2539 = param1.readInteger();
         this.var_2019 = param1.readString();
         this.var_2740 = param1.readString();
         this.var_3023 = param1.readBoolean();
         this.var_3024 = param1.readBoolean();
         param1.readString();
         this.var_3025 = param1.readInteger();
         this.var_2739 = param1.readString();
         this.var_3022 = param1.readString();
         this.var_1724 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2539;
      }
      
      public function get avatarName() : String
      {
         return this.var_2019;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2740;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_3023;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_3024;
      }
      
      public function get avatarGender() : int
      {
         return this.var_3025;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2739;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_3022;
      }
      
      public function get realName() : String
      {
         return this.var_1724;
      }
   }
}
