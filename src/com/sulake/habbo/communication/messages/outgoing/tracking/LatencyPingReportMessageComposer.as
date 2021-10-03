package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2303:int;
      
      private var var_2302:int;
      
      private var var_2301:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2303 = param1;
         this.var_2302 = param2;
         this.var_2301 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2303,this.var_2302,this.var_2301];
      }
      
      public function dispose() : void
      {
      }
   }
}
