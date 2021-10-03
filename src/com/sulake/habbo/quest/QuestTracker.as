package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.communication.messages.outgoing.quest.StartCampaignMessageComposer;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class QuestTracker implements IDisposable
   {
      
      private static const const_317:int = 0;
      
      private static const const_689:int = 1;
      
      private static const const_688:int = 2;
      
      private static const const_1064:int = 3;
      
      private static const const_1067:int = 4;
      
      private static const const_1066:int = 5;
      
      private static const const_1063:int = 6;
      
      private static const const_1065:Array = [-2,-3,-2,0,2,3,2,0,2,1,0,1];
      
      private static const const_1060:Array = [1,1,2,2,3,3,4,4,5,5,6,6,4];
      
      private static const const_1059:int = 6;
      
      private static const const_1467:int = 4;
      
      private static const const_686:int = 2;
      
      private static const const_1061:int = 200;
      
      private static const const_316:Array = ["a","b","c","d"];
      
      private static const const_1062:int = 10000;
      
      private static const const_1471:int = 0;
      
      private static const const_685:int = -1;
      
      private static const const_1469:Point = new Point(10,87);
      
      private static const const_1474:int = 162;
      
      private static const const_1472:Number = 0.01;
      
      private static const const_1473:Number = 100;
      
      private static const const_1470:int = 1000;
      
      private static const const_687:String = "quest_tracker";
      
      private static const const_1468:int = 10;
       
      
      private var var_48:HabboQuestEngine;
      
      private var var_210:QuestMessageData;
      
      private var _window:IWindowContainer;
      
      private var var_534:Timer;
      
      private var var_795:ProgressBar;
      
      private var var_245:int = 0;
      
      private var var_993:int = 0;
      
      private var var_1501:int = 0;
      
      private var var_1198:int = -1;
      
      private var var_794:int = -1;
      
      private var var_994:int = -1;
      
      private var var_1199:int;
      
      private var var_1500:int;
      
      private var var_2443:Boolean;
      
      public function QuestTracker(param1:HabboQuestEngine)
      {
         super();
         this.var_48 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_48)
         {
            this.var_48.toolbar.extensionView.detachExtension(const_687);
         }
         this.var_48 = null;
         this.var_210 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_534)
         {
            this.var_534.stop();
            this.var_534 = null;
         }
         if(this.var_795)
         {
            this.var_795.dispose();
            this.var_795 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_48 == null;
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         if(this._window)
         {
            this.clearPrompt();
            this.var_210 = param1;
            this.var_993 = 0;
            this.refreshTrackerDetails();
            this.var_1198 = 0;
            this.var_245 = const_1064;
         }
      }
      
      public function onQuestCancelled() : void
      {
         this.var_210 = null;
         if(this._window)
         {
            this.clearPrompt();
            this.var_795.refresh(0,100,-1);
            this.var_245 = const_688;
         }
      }
      
      public function onRoomEnter() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Boolean = Boolean(parseInt(this.var_48.configuration.getKey("new.identity","0")));
         var _loc2_:String = this.getDefaultCampaign();
         if(this.var_534 == null && _loc1_ && _loc2_ != "")
         {
            _loc3_ = int(this.var_48.configuration.getKey("questing.startQuestDelayInSeconds","30"));
            this.var_534 = new Timer(_loc3_ * 1000,1);
            this.var_534.addEventListener(TimerEvent.TIMER,this.onStartQuestTimer);
            this.var_534.start();
            Logger.log("Initialized start quest timer with period: " + _loc3_);
         }
      }
      
      public function onRoomExit() : void
      {
         if(this._window != null && this._window.visible)
         {
            this._window.findChildByName("more_info_txt").visible = false;
            this._window.findChildByName("more_info_region").visible = false;
         }
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         var _loc2_:Boolean = this._window && this._window.visible;
         if(param1.waitPeriodSeconds > 0)
         {
            if(_loc2_)
            {
               this.setWindowVisible(false);
            }
            return;
         }
         this.var_210 = param1;
         this.prepareTrackerWindow();
         this.refreshTrackerDetails();
         this.refreshPromptFrames();
         this.setWindowVisible(true);
         this.hideSuccessFrames();
         if(_loc2_)
         {
            if(this.var_245 == const_688)
            {
               this.var_245 = const_689;
            }
            this.setupPrompt(this.var_794,const_1467,false);
         }
         else
         {
            this._window.x = this.getOutScreenLocationX();
            this.var_245 = const_689;
            this.setupPrompt(const_1471,const_686,false);
         }
      }
      
      private function refreshPromptFrames() : void
      {
         if(!this.var_48.isQuestWithPrompts(this.var_210))
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < const_316.length)
         {
            this.var_48.setupPromptFrameImage(this._window,this.var_210,const_316[_loc1_]);
            _loc1_++;
         }
      }
      
      private function prepareTrackerWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this.var_48.getXmlWindow("QuestTracker"));
         this._window.findChildByName("more_info_region").procedure = this.onMoreInfo;
         new PendingImage(this.var_48,this._window.findChildByName("quest_tracker_bg"),"quest_tracker_with_bar");
         var _loc1_:int = 1;
         while(_loc1_ <= const_1059)
         {
            new PendingImage(this.var_48,this.getSuccessFrame(_loc1_),"checkanim" + _loc1_);
            _loc1_++;
         }
         this.hideSuccessFrames();
         this.var_795 = new ProgressBar(this.var_48,IWindowContainer(this._window.findChildByName("content_cont")),const_1474,"quests.tracker.progress",false,const_1469);
      }
      
      private function hideSuccessFrames() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= const_1059)
         {
            this.getSuccessFrame(_loc1_).visible = false;
            _loc1_++;
         }
      }
      
      private function hidePromptFrames() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < const_316.length)
         {
            this.getPromptFrame(const_316[_loc1_]).visible = false;
            _loc1_++;
         }
      }
      
      private function getSuccessFrame(param1:int) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("success_pic_" + param1));
      }
      
      private function getPromptFrame(param1:String) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("prompt_pic_" + param1));
      }
      
      private function refreshTrackerDetails() : void
      {
         this.var_48.localization.registerParameter("quests.tracker.caption","quest_name",this.var_48.getQuestName(this.var_210));
         this._window.findChildByName("desc_txt").caption = this.var_48.getQuestDesc(this.var_210);
         this._window.findChildByName("more_info_txt").visible = this.var_48.currentlyInRoom;
         this._window.findChildByName("more_info_region").visible = this.var_48.currentlyInRoom;
         var _loc1_:int = Math.round(100 * this.var_210.completedSteps / this.var_210.totalSteps);
         this.var_795.refresh(_loc1_,100,this.var_210.id);
         this.var_48.setupQuestImage(this._window,this.var_210);
      }
      
      private function onMoreInfo(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_48.questController.questDetails.showDetails(this.var_210);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._window == null)
         {
            return;
         }
         this.var_795.updateView();
         switch(this.var_245)
         {
            case const_689:
               _loc2_ = this.getDefaultLocationX();
               _loc3_ = this._window.x - _loc2_;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(_loc3_ * param1 * const_1472));
                  this._window.x -= _loc4_;
               }
               else
               {
                  this.var_245 = const_317;
                  this._window.x = _loc2_;
               }
               break;
            case const_688:
               _loc2_ = this.getOutScreenLocationX();
               _loc3_ = this._window.width - this._window.x;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(param1 * const_1473 / _loc3_));
                  this._window.x += _loc4_;
               }
               else
               {
                  this.var_245 = const_317;
                  this._window.x = _loc2_;
                  this.setWindowVisible(false);
               }
               break;
            case const_1064:
               this.hideSuccessFrames();
               this.getSuccessFrame(const_1060[this.var_1198]).visible = true;
               ++this.var_1198;
               if(this.var_1198 >= const_1060.length)
               {
                  this.var_245 = const_1066;
                  this.var_1501 = const_1470;
               }
               break;
            case const_1063:
               this.setQuestImageVisible(false);
               this.hidePromptFrames();
               this.var_1199 -= param1;
               this.getPromptFrame(const_316[this.var_994]).visible = true;
               if(this.var_1199 < 0)
               {
                  this.var_1199 = const_1061;
                  ++this.var_994;
                  if(this.var_994 >= const_316.length)
                  {
                     this.var_994 = 0;
                     --this.var_1500;
                     if(this.var_1500 < 1)
                     {
                        this.setupPrompt(const_1062,const_686,true);
                        this.var_245 = const_317;
                     }
                  }
               }
               break;
            case const_1067:
               if(this.var_993 >= -1)
               {
                  this._window.x = this.getDefaultLocationX();
                  this.var_245 = const_317;
                  this.setupPrompt(const_1062,const_686,false);
               }
               else
               {
                  this._window.x = this.getDefaultLocationX() + const_1065[this.var_993];
                  ++this.var_993;
               }
               break;
            case const_1066:
               this.var_1501 -= param1;
               if(this.var_1501 < 0)
               {
                  this.var_245 = const_317;
                  this.setWindowVisible(false);
               }
               break;
            case const_317:
               if(this.var_794 != const_685)
               {
                  this.var_794 -= param1;
                  if(this.var_794 < 0)
                  {
                     this.var_794 = const_685;
                     if(this.var_210 != null && this.var_48.isQuestWithPrompts(this.var_210))
                     {
                        if(this.var_2443)
                        {
                           this.startNudge();
                        }
                        else
                        {
                           this.var_245 = const_1063;
                           this.var_994 = 0;
                           this.var_1199 = const_1061;
                        }
                     }
                  }
               }
         }
      }
      
      private function getDefaultLocationX() : int
      {
         return 0;
      }
      
      private function getOutScreenLocationX() : int
      {
         return this._window.width + const_1468;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      private function onStartQuestTimer(param1:TimerEvent) : void
      {
         if(this.hasBlockingWindow())
         {
            Logger.log("Quest start blocked. Waiting some more");
            this.var_534.reset();
            this.var_534.start();
         }
         else
         {
            this.var_48.questController.questDetails.openForNextQuest = this.var_48.configuration.getKey("questing.showDetailsForNextQuest") == "true";
            this.var_48.send(new StartCampaignMessageComposer(this.getDefaultCampaign(),this.var_48.configuration.getBoolean("questing.useWing",false)));
         }
      }
      
      private function getDefaultCampaign() : String
      {
         var _loc1_:String = this.var_48.configuration.getKey("questing.defaultCampaign");
         return _loc1_ == null ? "" : _loc1_;
      }
      
      private function hasBlockingWindow() : Boolean
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ <= 2)
         {
            _loc2_ = this.var_48.windowManager.getDesktop(_loc1_);
            if(_loc2_ != null && this.hasBlockingWindowInLayer(_loc2_))
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      private function hasBlockingWindowInLayer(param1:IWindowContainer) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ != null && _loc3_.visible)
            {
               if(_loc3_ as IFrameWindow != null)
               {
                  if(_loc3_.name != "mod_start_panel")
                  {
                     return true;
                  }
               }
               else if(_loc3_.name == "welcome_screen")
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      private function setQuestImageVisible(param1:Boolean) : void
      {
         this._window.findChildByName("quest_pic_bitmap").visible = param1;
      }
      
      private function clearPrompt() : void
      {
         this.setupPrompt(const_685,0,false);
      }
      
      private function setupPrompt(param1:int, param2:int, param3:Boolean) : void
      {
         this.setQuestImageVisible(true);
         this.hidePromptFrames();
         this.var_794 = param1;
         this.var_1500 = param2;
         this.var_2443 = param3;
      }
      
      private function startNudge() : void
      {
         this.var_993 = 0;
         this.var_245 = const_1067;
      }
      
      private function setWindowVisible(param1:Boolean) : void
      {
         this._window.visible = param1;
         if(!param1)
         {
            this.var_48.toolbar.extensionView.detachExtension(const_687);
         }
         else
         {
            this.var_48.toolbar.extensionView.attachExtension(const_687,this._window);
         }
      }
   }
}
