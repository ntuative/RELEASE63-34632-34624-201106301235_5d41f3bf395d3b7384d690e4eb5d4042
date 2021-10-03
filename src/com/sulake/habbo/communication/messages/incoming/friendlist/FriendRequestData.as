package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1403:int;
      
      private var var_2736:String;
      
      private var var_2735:int;
      
      private var var_2579:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1403 = param1.readInteger();
         this.var_2736 = param1.readString();
         this.var_2579 = param1.readString();
         this.var_2735 = this.var_1403;
      }
      
      public function get requestId() : int
      {
         return this.var_1403;
      }
      
      public function get requesterName() : String
      {
         return this.var_2736;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2735;
      }
      
      public function get figureString() : String
      {
         return this.var_2579;
      }
   }
}
