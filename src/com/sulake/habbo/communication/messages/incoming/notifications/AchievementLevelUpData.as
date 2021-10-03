package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1325:int;
      
      private var var_1834:int;
      
      private var var_2410:int;
      
      private var var_2411:int;
      
      private var var_2980:int;
      
      private var var_1982:int;
      
      private var var_2981:String = "";
      
      private var var_2982:String = "";
      
      private var var_2979:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1325 = param1.readInteger();
         this.var_1982 = param1.readInteger();
         this.var_2981 = param1.readString();
         this.var_1834 = param1.readInteger();
         this.var_2410 = param1.readInteger();
         this.var_2411 = param1.readInteger();
         this.var_2980 = param1.readInteger();
         this.var_2979 = param1.readInteger();
         this.var_2982 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1325;
      }
      
      public function get points() : int
      {
         return this.var_1834;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2410;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2411;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2980;
      }
      
      public function get badgeId() : int
      {
         return this.var_1982;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2981;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2982;
      }
      
      public function get achievementID() : int
      {
         return this.var_2979;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
