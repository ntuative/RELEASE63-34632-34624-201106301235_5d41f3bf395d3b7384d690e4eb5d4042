package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_2015:int;
      
      private var var_2729:int;
      
      private var var_780:int;
      
      private var var_592:Number;
      
      private var var_2727:Boolean;
      
      private var var_2728:int;
      
      private var var_2014:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_592);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2729 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2728 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2727 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_780;
         if(this.var_780 == 1)
         {
            this.var_592 = param1;
            this.var_2015 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_780);
            this.var_592 = this.var_592 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2727 && param3 - this.var_2015 >= this.var_2729)
         {
            this.var_780 = 0;
            if(this.var_2014 < this.var_2728)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_2014;
               this.var_2015 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
