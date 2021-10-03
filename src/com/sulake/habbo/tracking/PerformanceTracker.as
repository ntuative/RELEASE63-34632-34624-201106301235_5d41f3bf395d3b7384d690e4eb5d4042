package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_161:IHabboConfigurationManager = null;
      
      private var var_611:int = 0;
      
      private var var_592:Number = 0;
      
      private var var_3091:Array;
      
      private var var_1671:String = "";
      
      private var var_2159:String = "";
      
      private var var_2575:String = "";
      
      private var var_2573:String = "";
      
      private var var_1905:Boolean = false;
      
      private var var_2157:GarbageMonitor = null;
      
      private var var_1670:int = 0;
      
      private var var_2989:Boolean;
      
      private var var_2158:int = 1000;
      
      private var var_1669:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_2015:int = 0;
      
      private var var_2156:int = 10;
      
      private var var_1672:int = 0;
      
      private var var_2988:Number = 0.15;
      
      private var var_2987:Boolean = true;
      
      private var var_2986:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_3091 = [];
         super();
         this.var_2159 = Capabilities.version;
         this.var_2575 = Capabilities.os;
         this.var_1905 = Capabilities.isDebugger;
         this.var_1671 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1671 == null)
         {
            this.var_1671 = "unknown";
         }
         this.var_2157 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_2015 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_2159;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_592;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_2158 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_2156 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_161 = param1;
         this._reportInterval = int(this.var_161.getKey("performancetest.interval","60"));
         this.var_2158 = int(this.var_161.getKey("performancetest.slowupdatelimit","1000"));
         this.var_2156 = int(this.var_161.getKey("performancetest.reportlimit","10"));
         this.var_2988 = Number(this.var_161.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2987 = Boolean(int(this.var_161.getKey("performancetest.distribution.enabled","1")));
         this.var_2989 = Boolean(this.var_161.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_2157.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_2157.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         if(this.var_2989)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1670;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_2158)
         {
            ++this.var_1669;
            _loc3_ = true;
         }
         else
         {
            ++this.var_611;
            if(this.var_611 <= 1)
            {
               this.var_592 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_611);
               this.var_592 = this.var_592 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_2015 > this._reportInterval * 1000 && this.var_1672 < this.var_2156)
         {
            _loc6_ = 0;
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_592 + "/s, system memory usage : " + _loc6_ + " bytes");
            _loc7_ = true;
            if(this.var_2987 && this.var_1672 > 0)
            {
               _loc8_ = this.differenceInPercents(this.var_2986,this.var_592);
               if(_loc8_ < this.var_2988)
               {
                  _loc7_ = false;
               }
            }
            this.var_2015 = param2;
            if(_loc7_ || _loc3_)
            {
               this.var_2986 = this.var_592;
               if(this.sendReport(param2))
               {
                  ++this.var_1672;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1671,this.var_2159,this.var_2575,this.var_2573,this.var_1905,_loc5_,_loc4_,this.var_1670,this.var_592,this.var_1669);
            this._connection.send(_loc2_);
            this.var_1670 = 0;
            this.var_592 = 0;
            this.var_611 = 0;
            this.var_1669 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
