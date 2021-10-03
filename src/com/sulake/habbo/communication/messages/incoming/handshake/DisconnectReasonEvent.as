package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2230:int = 0;
      
      public static const const_1924:int = 1;
      
      public static const const_1840:int = 2;
      
      public static const const_2310:int = 3;
      
      public static const const_2201:int = 4;
      
      public static const const_2156:int = 5;
      
      public static const const_2007:int = 10;
      
      public static const const_2275:int = 11;
      
      public static const const_2255:int = 12;
      
      public static const const_2235:int = 13;
      
      public static const const_2129:int = 16;
      
      public static const const_2220:int = 17;
      
      public static const const_2320:int = 18;
      
      public static const const_2113:int = 19;
      
      public static const const_2274:int = 20;
      
      public static const const_2133:int = 22;
      
      public static const const_2256:int = 23;
      
      public static const const_2327:int = 24;
      
      public static const const_2153:int = 25;
      
      public static const const_2143:int = 26;
      
      public static const const_2311:int = 27;
      
      public static const const_2240:int = 28;
      
      public static const const_2138:int = 29;
      
      public static const const_2229:int = 100;
      
      public static const const_2326:int = 101;
      
      public static const const_2244:int = 102;
      
      public static const const_2117:int = 103;
      
      public static const const_2154:int = 104;
      
      public static const const_2316:int = 105;
      
      public static const const_2238:int = 106;
      
      public static const const_2252:int = 107;
      
      public static const const_2155:int = 108;
      
      public static const const_2211:int = 109;
      
      public static const const_2204:int = 110;
      
      public static const const_2268:int = 111;
      
      public static const const_2168:int = 112;
      
      public static const const_2157:int = 113;
      
      public static const const_2330:int = 114;
      
      public static const const_2273:int = 115;
      
      public static const const_2169:int = 116;
      
      public static const const_2315:int = 117;
      
      public static const const_2130:int = 118;
      
      public static const const_2218:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1924:
            case const_2007:
               return "banned";
            case const_1840:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
