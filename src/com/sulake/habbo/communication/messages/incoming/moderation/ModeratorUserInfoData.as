package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2829:int;
      
      private var var_2832:int;
      
      private var var_859:Boolean;
      
      private var var_2831:int;
      
      private var var_2833:int;
      
      private var var_2830:int;
      
      private var var_2834:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2829 = param1.readInteger();
         this.var_2832 = param1.readInteger();
         this.var_859 = param1.readBoolean();
         this.var_2831 = param1.readInteger();
         this.var_2833 = param1.readInteger();
         this.var_2830 = param1.readInteger();
         this.var_2834 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2829;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2832;
      }
      
      public function get online() : Boolean
      {
         return this.var_859;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2831;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2833;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2830;
      }
      
      public function get banCount() : int
      {
         return this.var_2834;
      }
   }
}
