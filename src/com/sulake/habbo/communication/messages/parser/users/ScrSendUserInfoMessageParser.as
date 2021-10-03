package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2171:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1334:int = 3;
       
      
      private var var_1054:String;
      
      private var var_2847:int;
      
      private var var_2843:int;
      
      private var var_2841:int;
      
      private var var_2842:int;
      
      private var var_2848:Boolean;
      
      private var var_2588:Boolean;
      
      private var var_2586:int;
      
      private var var_2585:int;
      
      private var var_2845:Boolean;
      
      private var var_2844:int;
      
      private var var_2846:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1054 = param1.readString();
         this.var_2847 = param1.readInteger();
         this.var_2843 = param1.readInteger();
         this.var_2841 = param1.readInteger();
         this.var_2842 = param1.readInteger();
         this.var_2848 = param1.readBoolean();
         this.var_2588 = param1.readBoolean();
         this.var_2586 = param1.readInteger();
         this.var_2585 = param1.readInteger();
         this.var_2845 = param1.readBoolean();
         this.var_2844 = param1.readInteger();
         this.var_2846 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1054;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2847;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2843;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2841;
      }
      
      public function get responseType() : int
      {
         return this.var_2842;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2848;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2588;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2586;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2585;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2845;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2844;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2846;
      }
   }
}
