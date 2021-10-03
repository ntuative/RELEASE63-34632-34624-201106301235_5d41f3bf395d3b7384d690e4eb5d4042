package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_2049:String;
      
      private var var_2050:int;
      
      private var var_2048:int;
      
      private var var_1717:int;
      
      private var _id:int;
      
      private var var_2045:Boolean;
      
      private var _type:String;
      
      private var var_2753:String;
      
      private var var_2752:int;
      
      private var var_2046:String;
      
      private var var_2750:int;
      
      private var var_2751:int;
      
      private var var_1606:int;
      
      private var var_2047:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_2047 = new Date();
         super();
         this.var_2049 = param1.readString();
         this.var_2050 = param1.readInteger();
         this.var_2048 = param1.readInteger();
         this.var_1717 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2045 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2753 = param1.readString();
         this.var_2752 = param1.readInteger();
         this.var_2046 = param1.readString();
         this.var_2750 = param1.readInteger();
         this.var_2751 = param1.readInteger();
         this.var_1606 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_2049;
      }
      
      public function get localizationCode() : String
      {
         return this.var_2046;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2050;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2048;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1717;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_2045;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2753;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2752;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2750;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2751;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1606 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_2047.getTime();
         return int(Math.max(0,this.var_1606 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_2049;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_2046;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_2045 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_2050 >= this.var_2048;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_2047;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1606 = param1;
      }
   }
}
