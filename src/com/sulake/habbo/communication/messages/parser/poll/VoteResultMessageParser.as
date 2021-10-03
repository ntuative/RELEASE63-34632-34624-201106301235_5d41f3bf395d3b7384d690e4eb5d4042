package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1289:String;
      
      private var var_1508:Array;
      
      private var var_1334:Array;
      
      private var var_1904:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1289;
      }
      
      public function get choices() : Array
      {
         return this.var_1508.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1334.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1904;
      }
      
      public function flush() : Boolean
      {
         this.var_1289 = "";
         this.var_1508 = [];
         this.var_1334 = [];
         this.var_1904 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1289 = param1.readString();
         this.var_1508 = [];
         this.var_1334 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1508.push(param1.readString());
            this.var_1334.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1904 = param1.readInteger();
         return true;
      }
   }
}
