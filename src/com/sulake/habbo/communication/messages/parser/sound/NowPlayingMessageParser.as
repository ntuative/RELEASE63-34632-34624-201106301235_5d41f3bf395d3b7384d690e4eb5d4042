package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1786:int;
      
      private var _currentPosition:int;
      
      private var var_1788:int;
      
      private var var_1787:int;
      
      private var var_1789:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1786;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1788;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1787;
      }
      
      public function get syncCount() : int
      {
         return this.var_1789;
      }
      
      public function flush() : Boolean
      {
         this.var_1786 = -1;
         this._currentPosition = -1;
         this.var_1788 = -1;
         this.var_1787 = -1;
         this.var_1789 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1786 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1788 = param1.readInteger();
         this.var_1787 = param1.readInteger();
         this.var_1789 = param1.readInteger();
         return true;
      }
   }
}
