package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_2187:int;
      
      private var var_2898:String;
      
      private var var_341:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_2187 = param1.readInteger();
         this.var_2898 = param1.readString();
         this.var_341 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_2187;
      }
      
      public function get nodeName() : String
      {
         return this.var_2898;
      }
      
      public function get visible() : Boolean
      {
         return this.var_341;
      }
   }
}
