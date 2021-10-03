package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_48:HabboQuestEngine;
      
      private var var_589:QuestsList;
      
      private var var_496:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_418:QuestTracker;
      
      private var var_729:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_48 = param1;
         this.var_418 = new QuestTracker(this.var_48);
         this.var_589 = new QuestsList(this.var_48);
         this.var_496 = new QuestDetails(this.var_48);
         this._questCompleted = new QuestCompleted(this.var_48);
         this.var_729 = new NextQuestTimer(this.var_48);
      }
      
      public function onToolbarClick() : void
      {
         this.var_589.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_589.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_418.onQuest(param1);
         this.var_496.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_729.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_418.onQuestCompleted(param1);
         this.var_496.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_418.onQuestCancelled();
         this.var_496.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_729.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_418.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_589.onRoomExit();
         this.var_418.onRoomExit();
         this.var_496.onRoomExit();
         this.var_729.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_418.update(param1);
         this.var_729.update(param1);
         this.var_589.update(param1);
         this.var_496.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_48 = null;
         if(this.var_589)
         {
            this.var_589.dispose();
            this.var_589 = null;
         }
         if(this.var_418)
         {
            this.var_418.dispose();
            this.var_418 = null;
         }
         if(this.var_496)
         {
            this.var_496.dispose();
            this.var_496 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_729)
         {
            this.var_729.dispose();
            this.var_729 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_48 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_589;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_496;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_418;
      }
   }
}
